Rails.application.routes.draw do
  get "/all_products", controller: "products", action: "index"

  get "/products/:id" => "products#show"

  post "/products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "products/:id" => "products#destroy"

  get "/all_suppliers" => "suppliers#index"
end
