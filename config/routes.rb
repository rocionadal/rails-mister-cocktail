Rails.application.routes.draw do
  get 'doses/show'
  get 'ingredients/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [:show, :new, :create]
  end
  resources :doses, only: [:destroy]
end
