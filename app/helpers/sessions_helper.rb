module SessionsHelper

  # $BEO$5$l$?%f!<%6!<$G%m%0%$%s$9$k(B
  def log_in(user)
    session[:user_id] = user.id
  end

end
