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

Curriculum.create!(name: "名前のつけ方", menu_id: 1)
Curriculum.create!(name: "フォーマット", menu_id: 1)
Curriculum.create!(name: "コメント", menu_id: 1)
Curriculum.create!(name: "if文・条件分岐", menu_id: 2)
Curriculum.create!(name: "巨大な式の分割", menu_id: 2)
Curriculum.create!(name: "変数を洗練させる", menu_id: 2)
Curriculum.create!(name: "無関係な下位関係の抽出", menu_id: 3)
Curriculum.create!(name: "1度に一つのことを行う", menu_id: 3)
Curriculum.create!(name: "コードを言葉で説明する", menu_id: 3)
Curriculum.create!(name: "単体テスト", menu_id: 4)
Curriculum.create!(name: "結合テスト", menu_id: 4)
Curriculum.create!(name: "エラー処理", menu_id: 4)

Exam.create!(question: "以下のコードを分かりやすく命名してください", question_code: "def test\nputs question\nend", answer_code:"def test\nputs answer\nend", explanation:"explain", curriculum_id: 1)
Exam.create!(question: "以下のコードを分かりやすく命名してください", question_code: "def test\nputs question\nend", answer_code:"def test\nputs answer\nend", explanation:"explain", curriculum_id: 2)
Exam.create!(question: "以下のコードを分かりやすく命名してください", question_code: "def test\nputs question\nend", answer_code:"def test\nputs answer\nend", explanation:"explain", curriculum_id: 3)
Exam.create!(question: "以下のコードを分かりやすく命名してください", question_code: "def test\nputs question\nend", answer_code:"def test\nputs answer\nend", explanation:"explain", curriculum_id: 4)
Exam.create!(question: "以下のコードを分かりやすく命名してください", question_code: "def test\nputs question\nend", answer_code:"def test\nputs answer\nend", explanation:"explain", curriculum_id: 5)
Exam.create!(question: "以下のコードを分かりやすく命名してください", question_code: "def test\nputs question\nend", answer_code:"def test\nputs answer\nend", explanation:"explain", curriculum_id: 6)
Exam.create!(question: "以下のコードを分かりやすく命名してください", question_code: "def test\nputs question\nend", answer_code:"def test\nputs answer\nend", explanation:"explain", curriculum_id: 7)
Exam.create!(question: "以下のコードを分かりやすく命名してください", question_code: "def test\nputs question\nend", answer_code:"def test\nputs answer\nend", explanation:"explain", curriculum_id: 8)
Exam.create!(question: "以下のコードを分かりやすく命名してください", question_code: "def test\nputs question\nend", answer_code:"def test\nputs answer\nend", explanation:"explain", curriculum_id: 9)
Exam.create!(question: "以下のコードを分かりやすく命名してください", question_code: "def test\nputs question\nend", answer_code:"def test\nputs answer\nend", explanation:"explain", curriculum_id: 10)
Exam.create!(question: "以下のコードを分かりやすく命名してください", question_code: "def test\nputs question\nend", answer_code:"def test\nputs answer\nend", explanation:"explain", curriculum_id: 11)
Exam.create!(question: "以下のコードを分かりやすく命名してください", question_code: "def test\nputs question\nend", answer_code:"def test\nputs answer\nend", explanation:"explain", curriculum_id: 12)

User.create!(nickname: "admin", email: "admin@admin", password: "adminadmin", password_confirmation: "adminadmin", admin: 1)
