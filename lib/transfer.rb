class Transfer
  
  attr_accessor :sender, :receiver
  attr_writer 
  def initialize(sender, receiver, amt)
    @sender = sender
    @receiver = receiver
    
  end 
  
end
