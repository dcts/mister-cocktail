Rails.application.routes.draw do
  root to: "application#welcome"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [ :new, :create ]
  end
  resources :doses, only: [:edit, :update, :destroy]
  resources :ingredients, only: [:index, :show]
end
