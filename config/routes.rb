Rails.application.routes.draw do
  root to: 'pages#home'
  resources :user
end
