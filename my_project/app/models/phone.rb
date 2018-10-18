class Phone < ActiveRecord::Base
  belongs_to :contact
  before_save do
    return true unless self.default
    #self.contact.phones.each do |phone| 
      #phone.update(default: false)
    #end  
    self.contact.phones.update_all(default: false)
  end
end
