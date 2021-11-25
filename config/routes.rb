Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :communities do
    resources :member_guesses, only: [:new, :create, :update]
    resources :members, only: [:new, :create, :update]
  end
end
