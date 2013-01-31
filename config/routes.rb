SuitShop::Application.routes.draw do
  devise_for :users

  resources :shirts, only: [:index, :show]
  resources :orders, except: [:index, :delete]

  root :to => "home#index"
end
