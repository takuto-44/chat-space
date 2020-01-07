## users table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|mail|string|null: false|

### Association
- has_many :groups,through: :groups_users
- has_many :messages
- has_many :group_users

## groups table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :users,through: :groups_users
- has_many :groups_users
- has_many :messages

## messeges table

|Column|Type|Options|
|------|----|-------|
|comment|string|
|image|string|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belong_to :user
- belong_to :group

## groups_users table

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belong_to :user
- belong_to :group