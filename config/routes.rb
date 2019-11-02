Rails.application.routes.draw do
  resources :comments
  root to: redirect('/ideas')
  get "pages/info"
  resources :ideas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
