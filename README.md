
# README

# アプリケーション名
- Gourmet-Recipe

# アプリケーション概要
- ログイン、ログアウト
- レシピ投稿
- レシピ一覧表示
- レシピ詳細
- レシピ編集
- レシピ削除
- レシピコメント

# URL

# テスト用アカウント
## Basic認証
ID admin
パスワード 2222

## レシピ投稿者用
メールアドレス w@w
パスワード aaaaaa1

## レシピ閲覧者用
メールアドレス q@q
パスワード aaaaaa1

# 課題解決
- 自分が作った料理をみんなに見てもらい感想、アドバイスなどコミュニケーションがとれるアプリが欲しい
## 性別 主に女性
- 朝ごはんやお昼ごはん（お弁当）や夕ご飯の作る事の多い女性
## 年齢 ２０〜３０
- 料理レシピを参考にしてご飯を作ってる年齢をターゲット
## 職業 主婦
- 毎日料理を作る事の多い主婦。毎日料理を工夫し作ってるので色々なレシピを知ってそうなイメージ

# 利用方法
- 自分が作った料理を他の人に見てもらいそのレシピを公開し、実際レシピを見て作った料理をレシピ投稿した人にコメントできる

# [要件定義](https://docs.google.com/spreadsheets/d/1B5Zbn2R9iRv_7OUQmeDtNulbD0JRXmUNi9MNvAUa8mg/edit?usp=sharing)

# 今後実装予定
- 星評価機能

# [ER図](https://drive.google.com/file/d/1J99ih15AVVd9rnWHrmYZIoc_A-pNaHPR/view?usp=sharing)
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

