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
    sender.valid? && receiver.valid? 
  end 
  
  
end
