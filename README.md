## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|text|index: true, null:false, unique: true|
|email|text|index: true, null: false, unique: true|
|image|string|

### Association
- has_many :orders
- has_many :projects, through: :project_users
- has_many :project_users

## suppliersテーブル

|Column|Type|Option|
|------|----|------|
|name|text|index: true, null:false, unique:true|
|body|text|null: false|
|image|string|

### Association
- has_many :projects
- has_many :articles

## ordersテーブル

|Culumn|Type|Option|
|------|----|------|
|address|text|null: false|
|telephone|string|null: false|
|postal-code|string|null: false|
|user_id|integer|null: false|
|project_id|integer|null: false|

### Association
- belongs_to :user
- belongs_to :project

## projectsテーブル

|Culumn|Type|Option|
|------|----|------|
|name|text|index: true, null:false, unique: true|
|body|text|null: false|
|image|string|
|supplier_id|integer|null: false|

### Association
- belongs_to :supplier
- has_many :orders
- has_many :users, thourgh: :project_users
- has_many :project_users
- has_many :articles

## articlesテーブル

|Culumn|Type|Option|
|------|----|------|
|body|text|null: false|
|image|string|
|supplier_id|integer|null: false|

### Association
- belongs_to :project
- belongs_to :supplier

## project_usersテーブル

|Culumn|Type|Option|
|------|----|------|
|user_id|integer|null: false|
|project_id|integer|null: false|

### Association
- belongs_to :user
- belongs_to :project

## supplier_projectsテーブル

|Culumn|Type|Option|
|------|----|------|
|supplier_id|integer|null: false|
|project_id|integer|null: false|

### Association
- belongs_to :supplier
- belongs_to :project
