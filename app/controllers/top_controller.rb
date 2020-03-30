class TopController < ApplicationController
  def index
    @products = Product.active
    @products_count = @products.count
    @product = @products.first
  end


  def get_product
    @products = Product.active
    @product = @products.find(params[:id])
  end
end
