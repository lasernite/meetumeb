class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  before_filter :community
  
  def community
    @city = request.location.city
    @state = request.location.state
    @community = @city+@state
   end
  
end
