Rails.application.routes.draw do
  devise_for :players
  devise_for :users
  root to: 'pages#home'
  resources :quizzes, only: [:index, :show] do
    get "qr"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :players do
    resources :quizzes, only: :show do
      resources :games, only: [:create]
    end
    resources :games, only: [:show]
  end
end
