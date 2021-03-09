# テーブル設計

## users テーブル
| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association
- has_one :result

<br>

## menus テーブル
| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| name       | string | null: false |
| image      |        |             |
| pasta_name | string | null: false |

### Association
- has_many :contents

<br>

## contents テーブル
| Column  | Type    | Options           |
| ------- | ------- | ----------------- |
| menu_id | integer | foreign_key: true | 
| name    | string  | null: false       |
| text    | text    | null: false       |

### Association
- has_many :results
- belongs_to :menu

<br>

## results テーブル
| Column     | Type    | Options           |
| ---------- | ------- | ----------------- |
| user_id    | integer | foreign_key: true |
| content_id | integer | foreign_key: true |
| is_done    | boolean | null: false       |
| answer     | text    | null: false       |
| score      | integer | null: false       |

### Association
- belongs_to :user
- belongs_to :content
