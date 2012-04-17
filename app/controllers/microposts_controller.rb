class MicropostsController < ApplicationController
    before_filter :logged_in_user, only: [:create, :destroy]
    before_filter :correct_user, only: :destroy
    
    def create
      @micropost = current_user.microposts.build(params[:micropost])
      if @micropost.save
        flash[:success] = "Micropost created!"
        redirect_to profile_path
      else
        @micropost = current_user.microposts.build if logged_in?
        @user = User.find_by_remember_token(cookies[:remember_token])
        @microposts = @user.microposts.paginate(page: params[:page])
        redirect_to profile_path
      end
    end
  
    
    def destroy
      @micropost.destroy
      redirect_back_or root_path
    end
    
    
    private
    
    def correct_user
      @micropost = current_user.microposts.find_by_id(params[:id])
      redirect_to root_path if @micropost.nil?
    end
  end
  