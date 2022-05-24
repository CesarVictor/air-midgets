Rails.application.routes.draw do
  root to: 'pages#home'
  resources :midgets do
    resources :reviews
  end
  resources :user
end
