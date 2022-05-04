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
            name: params["test"],
            price: params[23],
            image_ulr: params["test.image"],
            decription: params["this is the description"],
        )
        product.save
        render json: product.as_json
    end
end
