class CommunitysController < ApplicationController
  
  def index
    @user = @city+@state
end
end