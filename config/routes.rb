Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "cocktails", to: 'cocktails#index'
  # get "cocktails/new", to: 'cocktails#new'
  # post "cocktails", to: 'cocktails#create'
  # get "ingredients", to: 'ingredients#index'
  # get "ingredients/:id", to: 'ingredients#show'
  # get "cocktails/:id/doses/new", to: 'doses#new'
  # post "cocktails/:id/doses", to: 'doses#create', as: "doses"
  # get "cocktails/:id", to: 'cocktails#show', as: "cocktail"
  # delete "cocktail/:id", to: 'cocktails#delete', as: "cocktail_destroy"

  resources :cocktails do
    resources :doses, shallow: true
  end
end
