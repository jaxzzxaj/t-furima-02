class ApplicationController < ActionController::Base

  #devise_parameter_sanitizer＝値を取得してくれるメソッド。.permit（どの時？,keys:[:どの値？])
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:nickname, :first_name_kanji, :first_name_ruby, :last_name_kanji, :last_name_ruby, :date_of_birth]
  end
end
