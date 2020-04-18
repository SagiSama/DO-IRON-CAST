class TopController < ApplicationController
  layout :landing_page

  def index
    @newses = News.enable
    @performances = Performance.enable
    @products = Product.enable
  end

  def landing_page
    'landing_page'
  end
end
