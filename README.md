![logo-image](https://user-images.githubusercontent.com/77393576/111975768-4f55eb80-8b44-11eb-9ccc-a5afd6f9e6d2.png)


# Rigate
Rigate(リガーテ)は、美しく読みやすいコードを書くコツを、自分の手を動かしながら習得できるWebアプリケーションです。スパゲティコードを抜け出して、ペンネやファルファッレのようなショートパスタなコードを目指しましょう！

# 本番環境


# 利用方法
1. 初めての場合はユーザー新規登録、そうでない場合はログインをします。
2. ログイン後、練習したいメニューを選びます。
3. メニューの中で、学びたい単元を選びます。
4. 単元を学習します。
5. 単元の最後に、練習問題があります。
6. 練習問題を解いて送信をした後、模範解答と自分の答えを見比べて自己採点します。
7. 自己採点の点数を入力して、6点以上を自分につけてあげたら、その単元は合格です。
8. 全部の単元をクリアすると、何かが起きるかもしれません...！

# ストーリー
プログラミング初心者(作者)は、コードを書くことに夢中なあまり、そのコードの保守性や可読性、美しさまで手が回りません。しかし、実際の現場ではプロジェクト規模が大きくなるほど、それらの要素は生産性に直結する重要事項だと言われています。
<br><br>
コードの保守性・可読性・美しさのための解説本はいくつか名著とされているものがありますが、それらを読んだだけではなかなか身についた気になりません。そこに課題を感じた作者は、**それらの本の重要な部分を取りまとめ、かつ手を動かして練習できるサイト**を作ろうと考えました。
<br><br>
コードが入り組んでいて可読性の低いコードは、「スパゲティ・コード」と呼ばれます。そんな"`スパゲティ`"の対極に位置するものとして、ペンネやファルファッレのような"`ショートパスタ`"をモチーフにしてみました。
<br><br>
初心者の時点から、可読性を意識したコーディングの練習をすることで、世の中に美しいコードがより多く生産されるようになります。そしてそれは、より生産的で、より優れた、より美しい世界の実現へと(きっと)繋がるでしょう！

# 特徴
- リファクタリングに着目したマニアックな練習サイト。
- これを全部こなせば、美しいコードを書くための基礎が(おそらく)身につきます。
- コードを書き込めるよう、フォームをMarkdown記法に対応させました(シンタックスハイライト付)。
- 完了した単元には、完了のマークが付きます。
- 全部の単元が終了すると、楽しいことが起こります。

# 要件定義

# DEMO

# 今後の実装予定
- リファクタリング問題の投稿機能(要XSS対策)
- 世界の美しいコードの展示場ページ

# ローカルでの動作方法
リポジトリをダウンロードし、ターミナルで該当ディレクトリに移動します。
ターミナルで`rails s`した後、[localhost:3000](http://localhost:3000/)にアクセスします。

# 開発環境
- Ruby: 2.6.5
- Ruby on rails: 6.0.0
- HTML5
- CSS3
- Node.js: 14.15.4
- yarn: 1.22.10
- MySQL: 5.6.50
- heroku
- RSpec

# DB設計
![er-diagram](https://user-images.githubusercontent.com/77393576/111978595-6d711b00-8b47-11eb-9815-e38e0f292ace.png)

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
- has_many   :contents
- has_one    :exam
- has_many   :exam_responses
- belongs_to :menu

<br>

## contents テーブル
| Column        | Type    | Options           |
| ------------- | ------- | ----------------- |
| curriculum_id | integer | foreign_key: true | 
| title         | string  | null: false       |
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
| user_answer_code | text    | null: false       |
| score            | integer |                   |

### Association
- belongs_to :user
- belongs_to :curriculum


# 注意事項

# 文責
- 作成者：turtlekazu
- Email：turtlekazu@icloud.com

# ライセンス
"rigate-app" is under [MIT license](https://en.wikipedia.org/wiki/MIT_License).

# 参考文献
- Dustin Boswell, Trevor Foucher著, 角征典訳 (2012)『リーダブルコード』, オライリージャパン.
- Robert C. Martin著, 花井志生訳 (2017) 『Clean Code』, KADOKAWA.

