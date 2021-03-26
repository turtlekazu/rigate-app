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
  類義語をできるだけ多く知識として身につけ、「カラフル」な単語を使いましょう。
  
  sendの類義語 → deliver, dispatch, announce, distribute, route
  findの類義語 → search, extract, locate, recover
  startの類義語 → launch, create, begin, open
  makeの類義語 → create, set up, build, generate, compose, add, new', curriculum_id: curriculum.id)
Content.create(title: "2. 汎用的な名前を避ける", text: 'fogeやfoo, value, tmpといった、何にでも使える名前をつけることは、情報を埋め込む余地を逃してしまい、非常にもったいないことです。エンティティのもつ具体的な"値"や"目的"を表した名前をつけましょう。

  例えば、その「value」はある値の2乗の合計を表しているのだとすれば、「sum_squares」と名付けたり。
  生存期間が数行で他の役割がない場合に、あえて「tmp」という名前を選ぶのなら、それはきちんと情報を伝えているのでOKです。', curriculum_id: curriculum.id)
Content.create(title: "3. ループ処理", text: 'i, j, kといった名前はループ処理の内部変数としてよく使います。これ自体は「イテレータ」という情報をちゃんと伝えています。

  しかし、イテレータが複数ある場合はもっといいアイデアがあります。例えばi, j, kを、club_i, menbers_i, users_iのように、異なる種類のイテレータには異なる言葉を頭につけます。こうすればj,kを使う必要がありません！', curriculum_id: curriculum.id)
Content.create(title: "4. 超具体的な名前をつける", text: '例えば任意のTCP/IPポートをサーバがリッスンできるか確認するメソッドに「ServerCanStart()」という名前をつけたとします。この名前はまだ抽象的です。

Serverは何をStartするのか、そのために何を確認しているのか？その戻り値は何なのか？
例えば「CanListenOnPort()」という名前にすれば万事解決です。', curriculum_id: curriculum.id)
Content.create(title: "5. 単位や属性をつける", text: '名前は短いコメントのようなものです。単位の情報や、重要な属性は直接名前につけてしまいましょう。

  例えば、16進数のIDなら「id」ではなく「hex_id」に。
  秒数は"秒"か"ミリ秒"かも重要な情報です。ミリ秒の経過時間を表すなら「elapsed」ではなく「elapsed_ms」としましょう。
  他にも、暗号化をする必要があるプレーンテキストのパスワードが格納された変数がある場合、「password」ではなく「plaintext_password」の方が将来のミスを防げます。', curriculum_id: curriculum.id)
Exam.create!(question: "以下のコードを分かりやすく命名してください", question_code: "def test\nputs question\nend", answer_code:"def test\nputs answer\nend", explanation:"explain", curriculum_id: curriculum.id)
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
