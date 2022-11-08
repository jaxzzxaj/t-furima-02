Rails.application.routes.draw do
  #スコープをしている
  devise_for :users
  #デフォルト→  devise_for{:users path: 'users' method: 'devise'}
end
