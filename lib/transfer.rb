class Transfer
  
  attr_accessor :sender, :receiver, :status, :amount
  attr_writer 
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end 
  
  def valid? 
    @sender.valid? && @receiver.valid? 
  end 
  
  def execute_transaction 
    if self.status == "pending" && self.valid? && @sender.balance > @amount
      @sender.balance -= self.amount
      @receiver.balance += self.amount
      self.status = "complete"
    else 
      return "Transaction rejected. Please check your account balance."
      @status = "rejected"
    end 
  end 
  
  def reverse_transfer 
    if self.status == "executed"
      @sender.balance += @amount
      @receiver.balance -= @amount
    end 
  end 
end
