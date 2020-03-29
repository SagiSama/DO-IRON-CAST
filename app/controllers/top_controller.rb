class TopController < ApplicationController
  def index
    @products = Product.active
    @products_count = @products.count
  end
end
