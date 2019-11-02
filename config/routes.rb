Rails.application.routes.draw do
  devise_for :users
  resources :comments
  root to: 'ideas#index'
  get "pages/info"
  resources :ideas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
