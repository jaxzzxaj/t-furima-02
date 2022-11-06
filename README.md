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