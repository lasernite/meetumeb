class CommunitysController < ApplicationController
  
  def index
    @community = @city+@state
    end
end