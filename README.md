# アプリケーション名: MMO

# アプリケーション概要: お金の管理できる

# URL: 未

# テスト用アカウント: 未

# 利用方法: 未

# アプリを作成した背景:・普段クレジットカードでの支払いが多く、今月どれだけクレジットカードを使用しているか、リアルタイムで把握できるアプリが欲しかった

# 洗い出した要件: https://docs.google.com/spreadsheets/d/1CpKircdElOEirHI4FTwU378HqCbaoHye-Hd3su4MgRU/edit#gid=982722306

# 実装した機能について: 未

# 実装予定の機能: 未

# データベース設計: [![Image from Gyazo](https://i.gyazo.com/06f9edaa9100a273d5a989dd5bc06751.png)](https://gyazo.com/06f9edaa9100a273d5a989dd5bc06751)

# 画面遷移図: [![Image from Gyazo](https://i.gyazo.com/1813f9430e3f50c546f7c95e75dc7bb9.png)](https://gyazo.com/1813f9430e3f50c546f7c95e75dc7bb9)

# 開発環境: Ruby on Rails

# ローカルでの動作方法: 未

# 工夫したポイント: 未

# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many :credit_cards
- has_many :credits
- has_many :banks
- has_many :bank_accounts
- has_many :costs


## credit_cards テーブル

| Column    | Type         | Options                        |
| ----------| ------------ | ------------------------------ |
| card_name | string       | null: false                    |
| user      | references   | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :credits


## credits テーブル

| Column           | Type         | Options                        |
| ---------------- | ------------ | ------------------------------ |
| credit_amount    | integer      | null: false                    |
| cost_category_id | integer      | null: false                    |
| content          | string       | null: false                    |
| credit_date      | date         | null: false                    |
| user             | references   | null: false, foreign_key: true |
| credit_card      | references   | null: false, foreign_key: true |


### Association

- belongs_to :user
- belongs_to :credit_card


## banks テーブル

| Column    | Type         | Options                        |
| ----------| ------------ | ------------------------------ |
| bank_name | string       | null: false                    |
| user      | references   | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :bank_accounts


## bank_accounts テーブル

| Column             | Type         | Options                        |
| ------------------ | ------------ | ------------------------------ |
| pay_amount         | integer      | null: false                    |
| income             | integer      | null: false                    |
| cost_category_id   | integer      | null: false                    |
| income_category_id | integer      | null: false                    |
| content            | string       | null: false                    |
| bank_date          | date         | null: false                    |
| user               | references   | null: false, foreign_key: true |
| bank               | references   | null: false, foreign_key: true |


### Association

- belongs_to :user
- belongs_to :bank


## costs テーブル

| Column           | Type         | Options                        |
| ---------------- | ------------ | ------------------------------ |
| cost_amount      | integer      | null: false                    |
| cost_category_id | integer      | null: false                    |
| content          | string       | null: false                    |
| cost_date        | date         | null: false                    |
| user             | references   | null: false, foreign_key: true |


### Association

- belongs_to :user