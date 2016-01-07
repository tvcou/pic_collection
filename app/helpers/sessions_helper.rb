module SessionsHelper

  # $BEO$5$l$?%f!<%6!<$G%m%0%$%s$9$k(B
  def log_in(user)
    session[:user_id] = user.id
  end

  # $B8=:_%m%0%$%s$7$F$$$k%f!<%6!<$rJV$9(B ($B%f!<%6!<$,%m%0%$%sCf$N>l9g$N$_(B)
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # $B%f!<%6!<$,%m%0%$%s$7$F$$$l$P(Btrue$B!"$=$NB>$J$i(Bfalse$B$rJV$9(B
  def logged_in?
    !current_user.nil?
  end

  # $B8=:_$N%f!<%6!<$r%m%0%"%&%H$9$k(B
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

end
