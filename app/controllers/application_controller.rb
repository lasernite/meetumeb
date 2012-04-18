class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  before_filter :location
  before_filter :community
  
  def location
    @city = request.location.city
    @state = request.location.state
  end
  
  def community
     @community = @city+@state
   end
  
end
