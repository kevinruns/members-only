Rails.application.routes.draw do
  
  devise_for :users, :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "posts#index"
  
  resources :posts, only: [:new, :create, :index, :show]
  resources :users, only: [:index, :destroy, :show]


  # scope "admin" do
  #   get "users", to: "users#index"
  #   get "users/:id", to: "users#show", as: "user"
  #   delete "users/:id", to: "users#destroy"
  # end

end
