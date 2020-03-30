Rails.application.routes.draw do
  devise_for :accounts, controllers: { sessions: 'accounts/sessions' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'top#index', as: 'top'

  resources :products
  post 'top/get_product/:id', to: 'top#get_product', as: 'get_product'
end
