class UsersController < ApplicationController
  def show
    if current_user
      @stocks = current_user.stocks
    else
      redirect_to new_user_session_path
    end
  end
end
