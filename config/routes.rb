Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :midgets do
    resources :reviews, only: %i[new create edit update show index]
  end
  delete 'review/:id', to: 'reviews#destroy'
  resources :reservations
  resources :users
end
