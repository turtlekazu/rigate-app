# coding: utf-8

menu1 = Menu.new(name: "見た目の改善", pasta_name: "Farfalle")
menu1.image.attach(io: File.open('app/assets/images/Farfalle.png'), filename: 'Farfalle.png')
menu1.save!

menu2 = Menu.new(name: "ループとロジック", pasta_name: "Fusilli")
menu2.image.attach(io: File.open('app/assets/images/Fusilli.png'), filename: 'Fusilli.png')
menu2.save!

menu3 = Menu.new(name: "コードの分割・再構成", pasta_name: "Penne")
menu3.image.attach(io: File.open('app/assets/images/Penne.png'), filename: 'Penne.png')
menu3.save!

menu4 = Menu.new(name: "テスト・エラー処理", pasta_name: "Conchiglie")
menu4.image.attach(io: File.open('app/assets/images/Conchiglie.png'), filename: 'Conchiglie.png')
menu4.save!

menu = Menu.find_by(pasta_name: "Farfalle")
Curriculum.create!(name: "名前のつけ方", menu_id: menu.id)
Curriculum.create!(name: "フォーマット", menu_id: menu.id)
Curriculum.create!(name: "コメント", menu_id: menu.id)
menu = Menu.find_by(pasta_name: "Fusilli")
Curriculum.create!(name: "if文・条件分岐", menu_id: menu.id)
Curriculum.create!(name: "巨大な式の分割", menu_id: menu.id)
Curriculum.create!(name: "変数を洗練させる", menu_id: menu.id)
menu = Menu.find_by(pasta_name: "Penne")
Curriculum.create!(name: "無関係な下位関係の抽出", menu_id: menu.id)
Curriculum.create!(name: "1度に一つのことを行う", menu_id: menu.id)
Curriculum.create!(name: "コードを言葉で説明する", menu_id: menu.id)
menu = Menu.find_by(pasta_name: "Conchiglie")
Curriculum.create!(name: "単体テスト", menu_id: menu.id)
Curriculum.create!(name: "結合テスト", menu_id: menu.id)
Curriculum.create!(name: "エラー処理", menu_id: menu.id)



curriculum = Curriculum.find_by(name: "名前のつけ方")
Content.create(title: "1. 明確な単語を選ぶ", text: '「名前に情報を詰め込む」ことを意識しましょう。
  getやsize、stopといった単語は抽象的すぎて、具体的な動作が想像できません。

  getなら、fetchやdownloadなどに。
  sizeなら中身に合わせて、heightやNumNodes,MemoryBytesなどに。
  stopなら、取り消せない場合はkill, 後から戻せるならpauseなどに。

  類義語をできるだけ多く知識として身につけ、「カラフル」な単語を使いましょう。', curriculum_id: curriculum.id)
Content.create(title: "2. 汎用的な名前を避ける", text: 'hogeやfoo, value, tmpといった、何にでも使える名前をつけることは、情報を埋め込む余地を逃してしまいます。エンティティのもつ具体的な"値"や"目的"を表した名前をつけましょう。

  例えば、その「value」はある値の2乗の合計を表しているのだとすれば、「sum_squares」と名付けます。
  生存期間が数行で他の役割がない場合に、あえて「tmp」という名前を選ぶのなら、それはきちんと情報を伝えているのでOKです。
  ', curriculum_id: curriculum.id)
Content.create(title: "3. ループ処理", text: 'i, j, kといった名前はループ処理の内部変数としてよく使います。これ自体は「イテレータ」という情報をちゃんと伝えています。

  しかし、イテレータが複数ある場合はもっといいアイデアがあります。例えばi, j, kを、club_i, menbers_i, users_iのように、異なる種類のイテレータには異なる言葉を頭につけます。こうすればj,kを使う必要がありません。', curriculum_id: curriculum.id)
Content.create(title: "4. 具体的な名前をつける", text: '例えば任意のTCP/IPポートをサーバがリッスンできるか確認するメソッドに「ServerCanStart()」という名前をつけたとします。この名前はまだ抽象的です。

Serverは何をStartするのか、そのために何を確認しているのか？その戻り値は何なのか？
例えば「CanListenOnPort()」という名前にすれば万事解決です。', curriculum_id: curriculum.id)
Content.create(title: "5. 単位や属性をつける", text: '名前は短いコメントのようなものです。単位の情報や、重要な属性は直接名前につけてしまいましょう。

  例えば、16進数のIDなら「id」ではなく「hex_id」に。
  秒数は"秒"か"ミリ秒"かも重要な情報です。ミリ秒の経過時間を表すなら「elapsed」ではなく「elapsed_ms」としましょう。
  他にも、暗号化をする必要があるプレーンテキストのパスワードが格納された変数がある場合、「password」ではなく「plaintext_password」の方が将来のミスを防げます。', curriculum_id: curriculum.id)
Content.create(title: "6. 名前の長さはスコープに比例", text: '情報を追加するという観点だと、どんどん名前は長くなります。ですが、例えば「newNavigationControllerWrappingViewControllerForDataSourceOfClass」ほどの長さになると考えものです。画面を占有し、コード行が増えます。

  名前の長さはスコープに比例させる、というのが一つの指標になります。スコープが極めて小さい場合、1文字の名前でも問題ありません。これがクラス全体で何度も使われる変数になると、十分な情報を詰め込んでおく必要があります。', curriculum_id: curriculum.id)
Content.create(title: "7. 名前のフォーマットを活用", text: '大文字、アンダースコア(_)、ハイフン(-)を使って、規則を設けて名前をつけることで情報を埋め込むこともできます。

例えばクラス名はClassName(キャメルケース)で、変数名はvaluable_name(小文字スネークケース)、定数はCONSTANT_NAME(大文字スネークケース)、メンバ変数はmember_(語尾にアンダースコア)といったように。

どのような規約を使うのかは自由です。重要なのはプロジェクト内で一貫性をもたせることです。', curriculum_id: curriculum.id)
Exam.create!(question: "以下の関数・変数を、わかりやすく命名し直してください。", question_code: "1. getPage()メソッド -> インターネットからページを取ってくる
2. BinaryTreeクラスの Size() メソッド -> ツリーのメモリ消費量を取得する
3. BinaryTreeクラスの Size() メソッド -> ツリーの高さを取得する
4. Threadクラスの Stop() メソッド -> 取り消しができない操作
5. send()メソッド -> タスクを割り振る
6. send()メソッド -> 大容量ファイルを送る
7. send()メソッド -> 結果の情報を知らせる
8. send()メソッド -> 不特定多数に送る
9. send()メソッド -> 特定のURLに送る
10. find()メソッド -> 特定の文字列を見つける
11. find()メソッド -> 配列の一部を抜き出す
12. find()メソッド -> ファイルの存在する場所を見つける
13. find()メソッド -> バックアップを見つけ、置換する
14. start()メソッド -> アプリを起動する
15. start()メソッド -> 例外処理を開始する
16. start()メソッド -> ファイルを開く
17. make()メソッド -> 新しいモデルを保存する
18. make()メソッド -> 初期設定を行う
19. make()メソッド -> 親に属する子モデルを生成する
20. make()メソッド -> ゼロから生成する
21. make()メソッド -> 複数を組み合わせて作成する
22. make()メソッド -> 要素を追加する
23. make()メソッド -> 新しいモデルを生成する
24. ユーザー情報を一時的に保存する変数tmp
25. DISALLOW_EVIL_CONSTRUCTORS()メソッド -> コンストラクタのコピーとアサインを禁止する
26. --run_locallyオプション -> デバッグ情報を印字するためのオプション
27. kbpsの最大値を格納した変数limit
28. メガバイト単位のサイズを格納した変数size
29. UTF-8の文字コードで書かれたHTMLが格納された変数html
30. エスケープ処理がまだされていないコメント文字列が格納された変数comment", answer_code:"1. fetchPage() または downloadPage()
2. MemoryByte()
3. Height()
4. Kill()
5. dispatch()
6. deliver()
7. announce()
8. distribute()
9. route()
10. search()
11. extract()
12. locate()
13. recover()
14. launch()
15. begin()
16. open()
17. create()
18. setup()
19. build()
20. generate()
21. compose()
22. add()
23. new()
24. user_info
25. DISALLOW_COPY_AND_ASSIGN
26. --extra_logging
27. max_kbps
28. size_mb
29. html_utf8
30. unescaped_comment", explanation:"sendやfind, start, makeは、汎用的に扱える単語なだけあって、逆に意味を曖昧にしてしまいがちです。
なるべく意味の狭い単語を使うことで、動作をもっと具体的に伝えることができます。

DISALLOW_EVIL_CONSTRUCTORS()メソッドは、Googleのオープンソースプロジェクトで実際に一時期使われていた関数だそうです。

単位や属性などは手軽に付加できるため、積極的に使いましょう。", curriculum_id: curriculum.id)
curriculum = Curriculum.find_by(name: "フォーマット")
Exam.create!(question: "以下のコードを分かりやすく命名してください", question_code: "def test\nputs question\nend", answer_code:"def test\nputs answer\nend", explanation:"explain", curriculum_id: curriculum.id)
curriculum = Curriculum.find_by(name: "コメント")
Exam.create!(question: "以下のコードを分かりやすく命名してください", question_code: "def test\nputs question\nend", answer_code:"def test\nputs answer\nend", explanation:"explain", curriculum_id: curriculum.id)
curriculum = Curriculum.find_by(name: "if文・条件分岐")
Exam.create!(question: "以下のコードを分かりやすく命名してください", question_code: "def test\nputs question\nend", answer_code:"def test\nputs answer\nend", explanation:"explain", curriculum_id: curriculum.id)
curriculum = Curriculum.find_by(name: "巨大な式の分割")
Exam.create!(question: "以下のコードを分かりやすく命名してください", question_code: "def test\nputs question\nend", answer_code:"def test\nputs answer\nend", explanation:"explain", curriculum_id: curriculum.id)
curriculum = Curriculum.find_by(name: "変数を洗練させる")
Exam.create!(question: "以下のコードを分かりやすく命名してください", question_code: "def test\nputs question\nend", answer_code:"def test\nputs answer\nend", explanation:"explain", curriculum_id: curriculum.id)
curriculum = Curriculum.find_by(name: "無関係な下位関係の抽出")
Exam.create!(question: "以下のコードを分かりやすく命名してください", question_code: "def test\nputs question\nend", answer_code:"def test\nputs answer\nend", explanation:"explain", curriculum_id: curriculum.id)
curriculum = Curriculum.find_by(name: "1度に一つのことを行う")
Exam.create!(question: "以下のコードを分かりやすく命名してください", question_code: "def test\nputs question\nend", answer_code:"def test\nputs answer\nend", explanation:"explain", curriculum_id: curriculum.id)
curriculum = Curriculum.find_by(name: "コードを言葉で説明する")
Exam.create!(question: "以下のコードを分かりやすく命名してください", question_code: "def test\nputs question\nend", answer_code:"def test\nputs answer\nend", explanation:"explain", curriculum_id: curriculum.id)
curriculum = Curriculum.find_by(name: "単体テスト")
Exam.create!(question: "以下のコードを分かりやすく命名してください", question_code: "def test\nputs question\nend", answer_code:"def test\nputs answer\nend", explanation:"explain", curriculum_id: curriculum.id)
curriculum = Curriculum.find_by(name: "結合テスト")
Exam.create!(question: "以下のコードを分かりやすく命名してください", question_code: "def test\nputs question\nend", answer_code:"def test\nputs answer\nend", explanation:"explain", curriculum_id: curriculum.id)
curriculum = Curriculum.find_by(name: "エラー処理")
Exam.create!(question: "以下のコードを分かりやすく命名してください", question_code: "def test\nputs question\nend", answer_code:"def test\nputs answer\nend", explanation:"explain", curriculum_id: curriculum.id)

User.create!(nickname: "admin", email: "admin@admin", password: "adminadmin", password_confirmation: "adminadmin", admin: 1)
User.create!(nickname: "rigate", email: "rigate@test", password: "shortpasta", password_confirmation: "shortpasta", admin: 0)
