class ProductsController < ApplicationController
    # def all_products_method
    #     render(json: Product.all)
    # end
    # def tv_method
    #     render(json: Product.first)
    # end
    # def Ps5_method
    #     render(json: Product.second)
    # end
    # def Mac_Book_method
    #     render(json: Product.last)
    # end
    def index #changed from all prdoucts // shows all products 
        product = Product.all
        render json: product.as_json
    end
    def show #changed from one_product // shows only one product
        product = Product.find_by(id: params["id"])
        render json: product.as_json
    end
    def create
        product = Product.new(
            name: params["name"],
            price: params["price"],
            image_ulr: params["image_url"],
            decription: params["description"],
        )
        product.save
        render json: product.as_json
    end
    def update
        product_id = params["id"]
        product = Product.find_by(id: product_id)
        product.name = params["name"] || product.name
        product.price = params["price"] || product.price
        # product.image_url = params["image_url"] || product.image_url
        product.decription = params["decription"] || product.decription

        product.save

        render json: product.as_json
    end
    def destroy
        product_id = params["id"]
        product = Product.find_by(id: product_id)
        product.destroy
        render json: {message: "Product deleted"}
    end
end
