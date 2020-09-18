Rails.application.routes.draw do
  resources :sportsplayers , only: [:index, :show, :new, :create, :edit]
  get "sportsplayers/:id/delete", to: "sportsplayers#destroy", as: "destroy" 
  get "delete_all", to: "sportsplayers#delete_all", as: "delete_all"
  # patch "sportsplayer/:id", to: "sportsplayers#show"
  patch "sportsplayers/:id", to: "sportsplayers#update"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
