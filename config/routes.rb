Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # devise_for :accounts, controllers: { sessions: 'accounts/sessions' }

  root to: 'top#index', as: 'top'

  resources :products
end
