Rails.application.routes.draw do
  mount ActionCable.server => "/cable"

  devise_for :users
  devise_for :players, controllers: {
    registrations: 'players/registrations'
  }

  resources :leads, only: :create

  root to: 'pages#home'
  # Note(grmnlrt): Temporary url for Anne
  get "close", to: "quizzes#close"
  get "qr", to: "quizzes#qr"

  resources :quizzes, only: [:index, :show, :update] do
    get "qr"
    get "close_quiz"
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

  require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end
end
