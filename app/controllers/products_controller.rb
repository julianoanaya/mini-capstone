class ProductsController < ApplicationController
    def all_products_method
        render(json: Product.all)
    end
    def tv_method
        render(json: Product.first)
    end
    def Ps5_method
        render(json: Product.)
    end
    def Mac_Book_method
        render(json: Product.last)
    end
end
