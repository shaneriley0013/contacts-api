Rails.application.routes.draw do
  
  get "/first_contact" => "contacts#show"
  
  get "/last_contact" => "contacts#last"

  get "/all_contacts" => "contacts#all"
  
end