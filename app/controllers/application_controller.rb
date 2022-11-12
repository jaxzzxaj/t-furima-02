class ApplicationController < ActionController::Base
  #条件：devise関連の画面へ遷移したとき。処理内容:configure_permitted_parametersをしてください
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  #devise_parameter_sanitizer＝値を取得してくれるメソッド。.permit（どの時？,keys:[:どの値？])
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:nickname, :first_name_kanji, :first_name_ruby, :last_name_kanji, :last_name_ruby, :date_of_birth])
  end
end
