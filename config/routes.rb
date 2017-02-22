Rails.application.routes.draw do
  get 'home/index'
  root "home#index"

  resources :projects do
    resources :daily_counts
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
