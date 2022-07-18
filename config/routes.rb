Rails.application.routes.draw do
  get "/all_products", controller: "products", action: "index"

  get "/products/:id" => "products#show"

  post "/products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "products/:id" => "products#destroy"

  get "/all_suppliers" => "suppliers#index"

  #user routes
  post "/users" => "users#create"

  #sessions route
  post "/sessions" => "sessions#create"

  #order create
  post "/orders" => "orders#create"

  #carted_products create
  post "/carted_products" => "carted_products#create"
end
