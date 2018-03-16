module SessionsHelper

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authorize
    redirect_to login_path, alert: 'You must be logged in.' if current_user.nil?
  end

  def logged_in?
    !!current_user
  end

end
