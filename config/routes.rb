Rails.application.routes.draw do
  resources :users

 post "/users/new", to: "users#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

root "locations#index"

post "/create_location", to: "locations#create"
get "/locations/new", to: "locations#new"
get "/locations/:id", to: "locations#show"
get "/locations/:id/edit_location", to: "locations#edit"
patch "/update_location/:id", to: "locations#update"
get "/delete_location/:id", to: "locations#destroy"



# resources :locations



end
