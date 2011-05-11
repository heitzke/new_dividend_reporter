class UsersController < ApplicationController
  def show
    if current_user
      @user = current_user
      redirect_to root_path
    else
      redirect_to new_user_session_path
    end
  end
end
