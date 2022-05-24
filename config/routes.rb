Rails.application.routes.draw do
  root to: 'pages#home'
  resources :midgets
  resources :user
end
