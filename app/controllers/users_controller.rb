class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user   # Handle a successful save.
    else
      render 'new'
    end
  end

<<<<<<< HEAD
    private
=======
    privatePP
>>>>>>> 4bf540b750b7193b58606d346f9b33e3bd4dee72

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
