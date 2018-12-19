Rails.application.routes.draw do
  namespace :players do
    get 'game_answers/create'
  end
  devise_for :players
  devise_for :users
  root to: 'pages#home'
  resources :quizzes, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
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
