class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  before_filter :location
  
  def location
    @city = request.location.city
    @state = request.location.state
  end
end
