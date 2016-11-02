class UsersController < ApplicationController
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def index
	 @users=User.all
  end

  def new
    @user = User.new
  end

  def show
  	@user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to user_path, notice: 'User delete' }
      format.json { head :no_content }
    end
  end

end
