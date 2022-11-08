class ApplicationController < ActionController::Base

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:nickname, :first_name_kanji, :first_name_ruby, :last_name_kanji, :last_name_ruby, :date_of_birth]
  end
end
