class ApplicationController < ActionController::Base
  protect_from_forgery
  def must_be_logged_in
    render 'pages/must_be_logged_in'
  end
end
