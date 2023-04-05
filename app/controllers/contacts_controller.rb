




class ContactsController < ApplicationController
  

  def index
    @contacts = Contact.all
    render :index
  end
  
  def show
    @contact = Contact.find_by(id: params[:id])
    render :show
  end  

  def create
    @contact = Contact.new(
      first_name: params[:first_name], 
      last_name: params[:last_name], 
      email: params[:email], 
      phone_number: params[:phone_number],
      address: params[:address]      
    )
    if @contact.save
      render :show
    else
      render json: {errors: @contact.errors.full_messages}, status: :unprocessable_entity
    end

  end
  
  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.email = params[:email] || @contact.email
    @contact.phone_number = params[:phone_number] || @contact.phone_number
    @contact.address = params[:address] || @contact.address
    
    if @contact.save
      render :show
    else
      render json: {errors: @contact.errors.full_messages}, status: :unprocessable_entity
    end
    
  end
  
  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    render json: {message: "Contact has been successfully removed"}
  end

end