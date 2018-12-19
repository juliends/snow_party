Rails.application.routes.draw do
  devise_for :users
  devise_for :players, controllers: {
    sessions: 'players/sessions',
    registrations: 'players/registrations'
  }

  root to: 'pages#home'

  resources :quizzes, only: [:index, :show]
  namespace :players do
    resources :quizzes, only: [:show]
  end
end
