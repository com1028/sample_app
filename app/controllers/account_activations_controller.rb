
class AccountActivationsController < ApplicationController
  def edit
    user = User.find_by(email: params[:email])
    if user && !user.activated? && user.authenticated?(:activation, params[:id])
      # Success => Signup
      user.activate
      log_in user
      flash[:success] = "ログイン成功！"
      redirect_to user
    else
      # Failure
      flash[:danger] = "リンク無効！"
      redirect_to root_url
    end
  end
end
