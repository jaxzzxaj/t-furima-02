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

  #上から順に"@"は必須。パスワードは英数字が必須。全角カタカナ、ひらがな、漢字必須。全角カタカナのみ。
  VALID_EMAIL_REGEX = /@.+/
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  VALID_KANJI_REGEX = /\A[ぁ-んァ-ヶ一-龥々]+\z/
  VALID_RUBY_REGEX = /\A[ァ-ヶ]+\z/



  validates_format_of :email, with: VALID_EMAIL_REGEX, message: 'には「@」を含めてください'
  validates_format_of :password, with: VALID_PASSWPRD_REGEX, message: 'には英語と数字の両方で入力してください'
  validates_format_of :first_name_kanji, with: VALID_KANJI_REGEX, message: 'には全角カタカナ、ひらがな、漢字で入力してください'
  validates_format_of :last_name_kanji, with: VALID_KANJI_REGEX, message: 'には全角カタカナ、ひらがな、漢字で入力してください'
  validates_format_of :first_name_ruby, with: VALID_RUBY_REGEX, message: 'には全角カタカナのみで入力してください'
  validates_format_of :last_name_ruby, with: VALID_RUBY_REGEX, message: 'には全角カタカナのみで入力してください'
end
