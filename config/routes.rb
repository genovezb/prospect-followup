Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "constructions", to: "constructions#index"
  get "constructions/new", to: "constructions#new"
  get 'constructions/detail', to: 'constructions#detail', as: 'detail_constructions'
  # get 'constructions/id:/responsable', to: 'constructions#responsable', as: 'responsable_constructions'
  post "constructions", to: "constructions#create"
  get "constructions/:id", to: "constructions#show", as:'construction'
  get "constructions/:id/edit", to: "constructions#edit", as: 'edit_construction'
  patch "constructions/:id", to: "constructions#update"
  delete "constructions/:id", to: "constructions#destroy"


  get "responsables", to: "responsables#index"
  get "responsables/new", to: "responsables#new"
  post "responsables", to: "responsables#create"
  get 'responsables/constructions', to: 'responsables#constructions', as: 'responsable_constructions'
  get "responsables/:id", to: "responsables#show", as: 'responsable'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
