Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/all_products/", controller:"products", action: "all_products_method"
  # get "/tv", controller:"products", action: "tv_method"
  # get "/Ps5", controller:"products", action: "Ps5_method"
  # get "/Mac_Book", controller:"products", action: "Mac_Book_method"
  get"/products" => "products#index"
  get "/products/:id", controller: "products", action: "show"

end
