class TopController < ApplicationController
  layout :landing_page

  def index
    @products = Product.active
    @newses = News.active
    @performances = Performance.active
  end

  def landing_page
    'landing_page'
  end
end
