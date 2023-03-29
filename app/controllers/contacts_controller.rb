




class ContactsController < ApplicationController
  
  
  
  def show
    @contact = Contact.first    
    render template: "contacts/show"
  end
  
  
  def last
    @contact = Contact.last
    render template: "contacts/show"
  end


  def all
    @contacts = Contact.all
    render template: "contacts/index"
  end

end