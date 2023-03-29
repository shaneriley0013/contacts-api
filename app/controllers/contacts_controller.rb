




class ContactsController < ApplicationController
  
  
  
  def show
    @contact = Contact.find_by(id: 6)    
    render template: "contacts/show"
  end
  
  
  def last
    @contact = Contact.last
    render template: "contacts/last"
  end


  def all
    @contacts = Contact.all
    render template: "contacts/index"
  end

end