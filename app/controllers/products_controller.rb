class ProductsController < ApplicationController

    def index
      # TODO: 隐藏
        @products = Product.all
    end

    def show
        @product = Product.find(params[:id])
    end

end
