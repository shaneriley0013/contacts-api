Rails.application.routes.draw do
  get "/one_contact" => "contacts#first"
  get "/last_contact" => "contacts#last"
  
end