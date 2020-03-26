class TopController < ApplicationController
  def index
    @products = Product.active
  end
end
