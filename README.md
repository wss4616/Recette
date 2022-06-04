###usersテーブル（ユーザー情報）###
| Column               | Type    | Options     |
| -------------------- | ------  | ------------|
|nickname              |string   |null: false  |
|email                 |string   |null: false  |
|encrypted_password    |string   |null: false  |
|birthday              |date     |null: false  |


###Association###
has_many :recipe, dependent: :destroy
has_many :favorite, dependent: :destroy
has_many :comments, dependent: :destroy


###recipeテーブル（投稿レシピ情報）###
| Column                   | Type      | Options     |
| ----------------------   | ------    | ------------|
|title                     |string     |null: false, index: true
|text                      |text       |null: false
|material                  |string     |null: false
|genre_id                  |integer    |null: false
|user                      |references |null: false, foreign_key: true


###Association###
belongs_to :user
has_many :comments,dependent: :destroy
belongs_to :category



###favoriteテーブル（お気に入り情報）###
| Column                   | Type      | Options     |
| ----------------------   | ------    | ------------|
|id                        |int
|user_id                   |integer
|recipe_id                 |integer

###Association###
belongs_to: user
belongs_to: recipe



###commentsテーブル（コメント情報）###
| Column                   | Type      | Options     |
| ----------------------   | ------    | ------------|
|text                      |text       |null: false
|user_id                   |references |null: false, foreign_key: true
|recipe_id                 |references |null: false, foreign_key: true

###Association###
belongs_to: user
belongs_to: recipe

###categoriesテーブル（カテゴリー情報）###
| Column                   | Type      | Options     |
| ----------------------   | ------    | ------------|
|genre                   　|          |             |

