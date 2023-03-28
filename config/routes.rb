Rails.application.routes.draw do
  
  get "/first_contact" => "contacts#first"
  
  get "/last_contact" => "contacts#last"

  get "/all_contact" => "contacts#all"
  
end