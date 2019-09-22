class Transfer
  
  attr_accessor :sender
  attr_writer :sender
  def initialize(sender, to, amt)
    @sender = sender
  end 
  
end
