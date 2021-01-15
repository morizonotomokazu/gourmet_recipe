
# README

## users テーブル

| Column           | Type   | Options                   |
| ---------------- | ------ | ------------------------- |
| nickname         | string | null: false               |
| name             | string | null: false               |
| email            | string | null: false unique: true  |
|encrypted_password| string | null: false               |


### Association
- has_many :recipes
- has_many :comments



## recipes テーブル

|Column                | Type     | Options                         |
| ---------------------| -------- | ------------------------------- |
| recipe_name(料理名)  |  string  | null: false                     |
| recipe_text(作り方)  |  text    | null: false                     |
| material(材料)       |  text    | null: false                     |
| category_id(種類)    | integer  | null: false                     |
| user                 |references| null: false, foreign_key: true  |


### Association
- belongs_to : user
- has_many :comments

## comments テーブル

| Column      | Type       | Options                        |
| --------    | ---------- | ------------------------------ |
| text        |  text      | null: false                    |
| user        |references  | null: false, foreign_key: true |
| recipe      |references  | null: false, foreign_key: true |


### Association
- belongs_to : user
- belongs_to : recipe

