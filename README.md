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