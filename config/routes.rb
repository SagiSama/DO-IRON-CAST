Rails.application.routes.draw do
  devise_for :accounts, controllers: { sessions: 'accounts/sessions' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'top#index', as: 'top'

  scope :admin do
    root to: 'news#index', as: 'dashboard'
    resources :products
    resources :news
    resources :performances
  end
end
