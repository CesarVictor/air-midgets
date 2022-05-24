Rails.application.routes.draw do
  root to: 'pages#home'
  resources :midgets do
    resources :reviews, only: %i[new create edit update show index]
  end
  resources :user
end
