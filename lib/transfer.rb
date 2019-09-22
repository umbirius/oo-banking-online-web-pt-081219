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
    @sender.valid? && @receiver.valid? && @sender.balance >= @amount
  end 
  
  def execute_transaction 
    if @status == "pending" && @valid? 
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else 
      return "Transaction rejected. Please check your account balance."
      @status = "rejected"
    end 
  end 
  
  def reverse_transfer 
    if @status == "executed"
      @sender.balance += @amount
      @receiver.balance -= @amount
    end 
  end 
end
