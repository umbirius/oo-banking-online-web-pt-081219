class Transfer
  
  attr_accessor :sender, :receiver, :status
  attr_writer 
  def initialize(sender, receiver, amt)
    @sender = sender
    @receiver = receiver
    @status = pending
  end 
  
end
