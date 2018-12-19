Rails.application.routes.draw do
  devise_for :users
  devise_for :players, controllers: {
    registrations: 'players/registrations'
  }

  root to: 'pages#home'
  resources :quizzes, only: [:index, :show] do
    get "qr"
  end
  namespace :players do
    resources :quizzes, only: :show do
      resources :games, only: [:create]
    end
    resources :games, only: [:show]
  end
end
