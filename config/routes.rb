Rails.application.routes.draw do
  get 'users/show'

  resources :items
  devise_for :users
  resources :users
  get 'welcome/index'

  get 'welcome/about'

  root 'users#show'

end
