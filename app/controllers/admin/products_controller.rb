class Admin::ProductsController < ApplicationController
    layout 'admin'
    before_action :authenticate_user!
    before_action :admin_required

    def index
        @products = Product.all
    end

    def new
        @product = Product.new
    end

    def edit
        @product = Product.find(params[:id])
    end

    def create
        @product = Product.new(product_params)

        if @product.save
          flash[:notice] = "新书保存"
          redirect_to admin_products_path
        else
          flash[:warning] = "skdfa"
          render :new
        end
    end

    def update
        @product = Product.find(params[:id])

        if @product.update(product_params)
          flash[:notice] = "编辑成功"
          redirect_to admin_products_path
        else
          flash[:warning] = "skdfa"
          render :edit
        end
    end

    def destroy
        @product = Product.find(params[:id])

        @product.destroy

        flash[:alert] = "已删除 #{@product.title}"
        redirect_to admin_products_path
    end
    private
        def product_params
            params.require(:product).permit(:title, :description, :author, :quantity, :price, :image)
        end
end
