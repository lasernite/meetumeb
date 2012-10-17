class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :add_www_subdomain
  include SessionsHelper
  before_filter :community
  
  private
    def add_www_subdomain
      unless /^www/.match(request.host)
        redirect_to("#{request.protocol}x.com#{request.request_uri}",
                    :status => 301)
      end
      end
  
  def community
    @city = request.location.city
    @state = request.location.state
    @community = @city+@state
   end
   
end
