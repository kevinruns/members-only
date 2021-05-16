Rails.application.routes.draw do
  
  devise_for :users, :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

#  resources :posts, only: [:new, :create, :index, :show]

  resources :posts
#  resources :users, only: [:index, :destroy, :show]

  root to: "posts#index"

  # scope "admin" do
  #   get "users", to: "users#index"
  #   get "users/:id", to: "users#show", as: "user"
  #   delete "users/:id", to: "users#destroy"
  # end

end
