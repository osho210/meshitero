class UsersController < ApplicationController
  def new
  end

  def show
    # 特定のuserの絞り込み
    @user = User.find(params[:id])
    @post_images = @user.post_images
  end

  def edit
    # 特定のuserの絞り込み
    @user = User.find(params[:id])
  end
  
  def update
	  @user = User.new(user_params)
	  @user.save
	  redirect_to user_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
