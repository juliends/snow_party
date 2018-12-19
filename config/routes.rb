Rails.application.routes.draw do
  mount ActionCable.server => "/cable"

  devise_for :users
  devise_for :players, controllers: {
    registrations: 'players/registrations'
  }

  resources :leads, only: :create

  root to: 'pages#home'
  resources :quizzes, only: [:index, :show] do
    get "qr"
  end
  namespace :players do
    resources :quizzes, only: :show do
      resources :games, only: [:create]
    end
    resources :games, only: [:show] do
      resources :game_answers, only: :create
      resources :results, only: :index
    end
  end
end
