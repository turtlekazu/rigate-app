# テーブル設計

## users テーブル
| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association
- has_many :exam_responses

<br>

## menus テーブル
| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| name       | string | null: false |
| image      |        |             |
| pasta_name | string | null: false |

### Association
- has_many :curriculums

<br>

## curriculums テーブル
| Column  | Type    | Options           |
| ------- | ------- | ----------------- |
| menu_id | integer | foreign_key: true | 
| name    | string  | null: false       |

### Association
- has_many   :exam_responses
- has_many   :contents
- has_one    :exam
- belongs_to :menu

<br>

## contents テーブル
| Column        | Type    | Options           |
| ------------- | ------- | ----------------- |
| curriculum_id | integer | foreign_key: true | 
| title         | string  |                   |
| text          | text    | null: false       |

### Association
- belongs_to :curriculum

<br>

## exams テーブル
| Column        | Type    | Options           |
| ------------- | ------- | ----------------- |
| curriculum_id | integer | foreign_key: true | 
| question      | string  | null: false       |
| question_code | text    | null: false       |
| answer_code   | text    | null: false       |
| explanation   | text    | null: false       |

### Association
- belongs_to :curriculum

<br>

## exam_responses テーブル
| Column           | Type    | Options           |
| ---------------- | ------- | ----------------- |
| user_id          | integer | foreign_key: true |
| curriculum_id    | integer | foreign_key: true |
| is_done          | boolean | null: false       |
| user_answer_code | text    | null: false       |
| score            | integer | null: false       |

### Association
- belongs_to :user
- belongs_to :curriculum
