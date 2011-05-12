class UsersController < ApplicationController
  def show
    if current_user
      @stocks = current_user.stocks
    else
      redirect_to new_user_session_path
    end
  end

  def remove_watch
    if Stock.find(params[:id])
      @stock = Stock.find(params[:id])
      if current_user
        current_user.unwatch @stock
        flash[:notice] = "Stock successfully removed from watchlist"
        redirect_to user_path(current_user)
      else
        flash.now[:error] = "Stock unsuccessfully removed from watchlist"
        redirect_to user_path(current_user)
      end
    end
  end
end
