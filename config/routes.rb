Rails.application.routes.draw do
  get "/all_products", controller: "products", action: "index"

  get "/products/:id", controller: "products", action: "show"

  post "/products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "products/:id" => "products#destroy"
end
