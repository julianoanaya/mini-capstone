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
    def index
        product = Product.all
        render json: product.as_json
    end
    def show
        product = Product.find_by(id: params["id"])
        render json: product.as_json
    end

end
