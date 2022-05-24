Rails.application.routes.draw do
  root to: 'pages#home'
  resources :midgets do
    resources :reviews, only: %i[new create edit update show index]
  end
  delete 'review/:id', to: 'reviews#destroy'
  resources :user
  resources :midgets
  resources :users do
    resources :reservations, exept: [:delete]
  end
  delete 'reservation/:id', to: 'reservations#destroy'
end
