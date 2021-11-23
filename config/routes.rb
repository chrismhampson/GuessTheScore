Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :communities, only: [:index, :create, :update, :new, :show] do
    resources :members do
      resources :member_guesses, only: [:create, :update]
    end
  end
end
