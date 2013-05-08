class UsersController < ActionController::Base

  def show
    @user = User.find(params[:id])
  end

end
