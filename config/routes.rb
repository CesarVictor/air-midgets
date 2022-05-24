Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :midgets do
    resources :reviews, only: %i[new create edit update show index]
  end
  delete 'review/:id', to: 'reviews#destroy'
  resources :midgets
  resources :reservations
  resources :users
  delete 'reservation/:id', to: 'reservations#destroy'
end
