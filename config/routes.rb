Rails.application.routes.draw do
  #スコープをしている
  devise_for :users
  #デフォルト→  devise_for{:users path: 'users' method: 'devise'}

  root to: "product#index"
  resources :products, only:[:index, :new, :create]
end
