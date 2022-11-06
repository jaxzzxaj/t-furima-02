## 概要
過去に作ったアプリケーションの制作とgithubの復習のためにつくってます。
今回の目標期限は、２週間。

## users テーブル

| Column             | Type   | Options     |
| :----------------- | :----- | :---------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| first_name_kanji   | string | null: false |
| first_name_ruby    | string | null: false |
| last_name_kanji    | string | null: false |
| last_name_ruby     | string | null: false |
| date_of_birth      | date   | null: false |

### Association

-has_many :items
-has_many :orders

## products テーブル

| Column          | Type       | Options                        |
| :-------------- | :--------- | :----------------------------- |
| name            | string     | null: false                    |
| description     | text       | null: false                    |
| category_id     | integer    | null: false                    |
| condition_id    | integer    | null: false                    |
| delivery_fee_id | integer    | null: false                    |
| prefecture_id   | integer    | null: false                    |
| delivery_day_id | integer    | null: false                    |
| price           | integer    | null: false                    |
| user            | references | null: false, foreign_key: true |

### Association
-belongs_to :user
-has_one :order

----activeHash----
-belongs_to :category
-belongs_to :condition
-belongs_to :delivery_fee
-belongs_to :prefecture
-belongs_to :delivery_day
-------end--------

## orders テーブル

| Column     | Type       | Options                        |
| :--------- | :--------- | :----------------------------- |
| user       | references | null: false, foreign_key: true |
| product    | references | null: false, foreign_key: true |

### Association

-belongs_to :user
-belongs_to :product
-has_one :address