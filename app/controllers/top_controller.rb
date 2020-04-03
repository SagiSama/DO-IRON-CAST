class TopController < ApplicationController
  layout :landing_page

  def index
    @products = Product.active
    @products_count = @products.count
    @product = @products.first
  end


  def get_product
    @products = Product.active
    @product = @products.find(params[:id])
  end

  def landing_page
    'landing_page'
  end
end
