## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|text|index: true, null:false, unique: true|
|email|text|index: true, null: false, unique: true|

## supplierテーブル

|Column|Type|Option|
|------|----|------|
|name|text|index: true, null:false, unique:true|
|body|text|null: false|
|image|string|

## ordersテーブル

|Culumn|Type|Option|
|------|----|------|
|address|text|null: false|
|telephone|number|null: false|
|postal-code|number|null: false|

## projectテーブル

|Culumn|Type|Option|
|------|----|------|
|name|text|index: true, null:false, unique: true|
|body|text|null: false|
|image|string|
