class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  #database_authenticatable＝パスワードを暗号化してくれる
  #registerable＝登録処理でuserをサインアップしてくれる＋アカウントを編集・削除できる
  #recoverable=パスワードをリセットして通知してくれる
  #rememberable=userを記憶するためのトークンを生成・削除してくれる
  #validatable=メールやパスワードのバリデーションを提供してくれる
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

#userが新規登録/ログイン時に打つ必須項目を取得できるようにする
  with options presence: true do
    validates :nickname
    validates :first_name_kanji
    validates :first_name_ruby
    validates :last_name_kanji
    validates :last_name_ruby
    validates :date_of_birth
  end
end
