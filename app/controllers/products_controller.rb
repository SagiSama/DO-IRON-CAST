class ProductsController < ApplicationController
  before_action :authenticate_account!
  before_action :target_product, only: %i[edit show update]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def update
    if @product.update(product_params)
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def destroy
    Product.destroy(params[:id])
    redirect_to products_path
  end

  private

  def target_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :note, :price, :status)
  end
end
