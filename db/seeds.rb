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
