Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "constructions", to: "constructions#index"
  get "constructions/new", to: "constructions#new"
  post "constructions", to: "constructions#create"
  get "constructions/:id", to: "constructions#show"

  get "responsables", to: "responsables#index"
  get "responsables/new", to: "responsables#new"
  post "responsables", to: "responsables#create"
  get "responsables/:id", to: "responsables#show"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
