




class ContactsController < ApplicationController
  
  
  
  def show
    @contact = Contact.find_by(id: 6)    
    render template: "contacts/show"
  end
  
  
  def last
    contact = Contact.last
    render json: {
      id: contact.id,
      first_name: contact.first_name,
      last_name: contact.last_name,
      email: contact.email,
      phone_number: contact.phone_number,
    }
  end


  def all
    @contacts = Contact.all
    render template: "contacts/index"
  end

end