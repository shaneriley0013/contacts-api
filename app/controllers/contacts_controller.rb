




class ContactsController < ApplicationController
  
  
  
  def first
    contact = Contact.first
    render json: {
      id: contact.id,
      first_name: contact.first_name,
      last_name: contact.last_name,
      email: contact.email,
      phone_number: contact.phone_number,
    }
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
    contacts = Contact.all
    # all_contacts = []
    # contacts.each do |contact|
    #   all_contacts << {
    #     id: contact.id,
    #     first_name: contact.first_name,
    #     last_name: contact.last_name,
    #     email: contact.email,
    #     phone_number: contact.phone_number
    #   }
    # end

    render json: [
      {
        id: contacts[0].id,
        first_name: contacts[0].first_name,
        last_name: contacts[0].last_name,
        email: contacts[0].email,
        phone_number: contacts[0].phone_number
      },
      {
        id: contacts[1].id,
        first_name: contacts[1].first_name,
        last_name: contacts[1].last_name,
        email: contacts[1].email,
        phone_number: contacts[1].phone_number
      },
      {
        id: contacts[2].id,
        first_name: contacts[2].first_name,
        last_name: contacts[2].last_name,
        email: contacts[2].email,
        phone_number: contacts[2].phone_number
      },
      {
        id: contacts[3].id,
        first_name: contacts[3].first_name,
        last_name: contacts[3].last_name,
        email: contacts[3].email,
        phone_number: contacts[3].phone_number
      },
      
    ]
  end







end