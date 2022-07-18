Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  # Defines the products path route ("/products")
  get "/products" => "products#index"

  # Defines the auth twitter path route ("/auth/twitter")
  get "/auth/twitter" => "sessions#create"

  # Defines the logout path route ("/logout")
  get "/logout" => "sessions#destroy"
end
