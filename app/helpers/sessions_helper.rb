module SessionsHelper
  
  # ログイン処理
  def log_in(user)
    session[:user_id] = user.id
  end
  
  # ログインしているユーザーを取得
  def current_user
    if session[:user_id]
      # DBへ問い合わせする回数を減らすための記述
      @current_use ||= User.find_by(id: session[:user_id])
    end
  end
  
  # ログインしているかの確認
  def logged_in?
    !current_user.nil?
  end
  
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
