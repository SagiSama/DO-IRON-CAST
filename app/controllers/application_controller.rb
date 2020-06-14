class ApplicationController < ActionController::Base
  layout :layout_by_resource

  def layout_by_resource
    if devise_controller?
      'application'
    end
  end
end
