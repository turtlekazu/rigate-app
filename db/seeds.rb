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
Curriculum.create!(name: "名前に情報をつめこむ", menu_id: menu.id)
Curriculum.create!(name: "誤解されない名前", menu_id: menu.id)
Curriculum.create!(name: "レイアウトを整える", menu_id: menu.id)
Curriculum.create!(name: "コメントをつける", menu_id: menu.id)
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

curriculum = Curriculum.find_by(name: "名前に情報をつめこむ")
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
curriculum = Curriculum.find_by(name: "誤解されない名前")
Content.create(title: "1. filter(条件による抽出)", text: '例えば、filter("year <= 2021")となっていた時、
返ってくる値はこの条件に適したものでしょうか、それとも条件に適さないものでしょうか？

両方に取られる可能性がある単語は使わない方が望ましいです。
もしも条件に適したものを取得したい場合は、「select」
条件に適していないものを取得したい場合は、「exclude」
といったように使い分けましょう。', curriculum_id: curriculum.id)
Content.create(title: "2. clip(部分削除)", text: '例えば、clip(text, length)となっていた場合に、このlengthは2通りに解釈できます。
1つ目は、最後からlength文字分だけ削除する、というもの。
2つ目は、最大length文字まで全体を切り詰める、というもの。

仮に前者なら、「remove」が、
後者なら、「truncate」が、
clipという単語よりも適しています。

さらに後者の場合、lengthよりもmax_lengthの方が適していますし、さらに言えばそれが文字列ならmax_charsの方が具体的です。', curriculum_id: curriculum.id)
Content.create(title: "3. minとmax(限界値)", text: '限界値を表すときにlimitという単語は魅力的な選択肢です。
しかしそのlimitは、限界値を含めるのでしょうか、含めないのでしょうか？

限界値を含んでいる場合、limitではなく「min」や「max」を使うと、これを情報として含むことができます。', curriculum_id: curriculum.id)
Content.create(title: "4. firstとlast(範囲の指定)", text: '例えば、range(start=2, stop=4)という値があった場合、4は含めるのでしょうか、含めないのでしょうか？

最後の値を含めたい場合には、startとstopよりも
「first」と「end」を使った方が、より意味を具体的に伝えられます。', curriculum_id: curriculum.id)
Content.create(title: "5. beginとend(包含/排他的範囲)", text: '時間についての範囲は、「13時から17時まで」のように表現されますが、
この際に17時は含まれておらず、16時59分59秒9999...がその最後の値になります。

このような包含/排他的な範囲を表すときは、「begin」と「end」を使うことがおすすめです。
厳密にはendは必ずしも排他を意味するものではありませんが、より適した単語が見つからないため、慣習的にそうなっています。', curriculum_id: curriculum.id)
Content.create(title: "6. ブール値", text: '例えば、bool read_password = true
という変数があったとします。
  
このtrueが意味することは2通りに解釈できます。
1つ目に、これから読み取る必要がある、というもの。
2つ目に、すでに読み取っている、というもの。
  
この原因はreadという単語の意味が曖昧なことです。「need_password」や「is_authenticated」といった表現に変更すれば、明確になります。
  
基本的にブール値の変数名は、頭に「is/has/can/should」といった言葉をつけることが望ましいです。', curriculum_id: curriculum.id)
Content.create(title: "7. 一般的な認識に合わせる", text: 'get*()というメソッドは、基本的に値を返すだけの軽量アクセサとしての認識がされています。

そのため、get*()という名前をつけたメソッドに大量の計算を要する処理を記述してしまうとどうなるでしょうか。
それを知らない別の人が、軽い処理だと思って何度も呼び出してしまい、無駄な計算コストがかかる、といった自体が起こる可能性があります。

同様に、size()というメソッドは、基本的にO(1)の計算量であると認識されているため、
これにO(n)となる計算量となる処理をさせることは望ましくありません。', curriculum_id: curriculum.id)
Exam.create!(question: "以下の関数・変数を、わかりやすく命名し直してください。", question_code: "1. filter(条件式)メソッド -> 条件に適したものを返す
2. filter(条件式)メソッド -> 条件に適さないものを返す
3. clip(text, length)メソッド -> lengthは、除去する文字数
4. clip(text, length)メソッド -> lengthは、除去後の全体の文字列
5. 限界値を包含する変数num_limit
6. ある範囲の最後尾の値が格納された変数stop
7. 何時まで、という情報が格納された変数stop
8. 値が空かどうかブール値が格納された変数empty
9. 読み取り可能かどうかのブール値が格納された変数read", answer_code:"1. select()
2. exclude()
3. remove()
4. truncate()
5. max_num
6. last
7. end
8. is_empty または isEmpty
9. can_read または canRead", explanation:"2通りの解釈ができてしまう単語はなるべく避けるようにしましょう。
限界値を含めるときはmin/max、範囲指定にはfirst/last、包含/排他的範囲にはbegin/endを使います。

ブール値はis/has/can/shouldを頭につけることで、意味が明確になります。", curriculum_id: curriculum.id)
curriculum = Curriculum.find_by(name: "レイアウトを整える")
Content.create!(title: "1. 美しいレイアウトの原則", text: 'コードのレイアウトが美しく整っていると、読み手がコードの意味の理解にかかる時間を短縮できます。
  レイアウトには、余白・配置・順序といった要素が関わっています。
  
  ①なじみがある、一貫したレイアウトを使う。
  ②似ているコードは似ているように見せる。
  ③関連するコード同士はブロック化する。
  
  という3原則に則って、レイアウトを改善していきましょう。
  ', curriculum_id: curriculum.id)
Content.create!(title: "2. 一貫性のある改行位置", text: '改行に気を遣うだけでも、見た目はグッと美しくなります。
  コメントを整列させて、頭の位置を合わせることも有効です。
  例えば、
  
  public class PerformanceTester {
    public static final TcpConnectionSimulator wifi = new TcpConnectionSimulator(
      500, /* Kbps */
      80, /* millisecs latency */
      200, /* jitter */
      1 /* packet loss % */);
  
    public static final TopConnectionSimulatior t3_fiber =
      new TcpConnectionSimulator(
        45000, /* Kbps */
        10, /* millisecs latency */
        0, /* jitter */
        0 /* packet loss % */);
  
    public static final TcpConnectionSimulator cell = new TcpConnectionSimulator(
        100, /* Kbps */
        400, /* millisecs latency */
        250, /* jitter */
        5 /* packet loss % */);
  }
  
  のシルエットを美しく直すとすると、以下のようになります。
  
  public class PerformanceTester {
    public static final TcpConnectionSimulator wifi = 
      new TcpConnectionSimulator(
        500,   /* Kbps */
        80,    /* millisecs latency */
        200,   /* jitter */
        1      /* packet loss % */);
  
    public static final TopConnectionSimulatior t3_fiber =
      new TcpConnectionSimulator(
        45000, /* Kbps */
        10,    /* millisecs latency */
        0,     /* jitter */
        0      /* packet loss % */);
  
    public static final TcpConnectionSimulator cell = 
      new TcpConnectionSimulator(
        100,   /* Kbps */
        400,   /* millisecs latency */
        250,   /* jitter */
        5      /* packet loss % */);
  }
  ', curriculum_id: curriculum.id)
Content.create!(title: "3. メソッドをつくって整列", text: '例えば、以下のような場合、

  DatabaseConnection database_connection;
  string error;
  assert(ExpandFullName(database_connection, "Dog Adams", &error) 
      == "Mr. Douglas Adams");
  assert(error == "");
  assert(ExpandFullName(database_connection, "Jake Brown", &error) 
      == "Mr. Jacob Brown Ⅲ");
  assert(error == "");
  assert(ExpandFullName(database_connection, "No Such Guy", &error) == "");
  assert(error == "no match found");
  assert(ExpandFullName(database_connection, "John", &error) == "");
  assert(error == "more than one result");
  
  シルエットが汚いため、処理内容がスッと頭に入ってきません。
  そんな時は、新しいメソッドをつくってしまい、以下のようにすれば、見た目が整います。
  
  CheckFullName("Doug Adams", "Mr. Douglas Adams", "")
  CheckFullName("Jake Brown", "Mr. Jacob Brown Ⅲ", "")
  CheckFullName("No Such Guy", "", "no match found")
  CheckFullName("John", "", "more than one result")
  
  void CheckFullName(string partial_name,
                     string expected_full_name,
                     string expected_error) {
      string error;
      string full_name = ExpandFullName(database_connection, partial_name, &error);
      assert(full_name == expected_full_name);
      assert(error == expected_error);
  }
  
  メソッドをつくったことで、何をしているのかを直感的につかみやすくなりました。
  
  ', curriculum_id: curriculum.id)
Content.create!(title: "4. 縦のラインを揃える", text: '縦の線を揃えるだけで、似ているコードを似ているように見せることができます。
  例えば、先程の例では、
  
  CheckFullName("Doug Adams", "Mr. Douglas Adams", "")
  CheckFullName("Jake Brown", "Mr. Jacob Brown Ⅲ", "")
  CheckFullName("No Such Guy", "", "no match found")
  CheckFullName("John", "", "more than one result")
  
  を、
  
  CheckFullName("Doug Adams" , "Mr. Douglas Adams", "")
  CheckFullName("Jake Brown" , "Mr. Jacob Brown Ⅲ", "")
  CheckFullName("No Such Guy", ""                 , "no match found")
  CheckFullName("John"       , ""                 , "more than one result")
  
  とすることで、もっと把握しやすくなります。
  ', curriculum_id: curriculum.id)
Content.create!(title: "5. 順番にも意味がある", text: 'コードの順番は、コード実行の際に影響を及ぼすことはありませんが、せっかくなのでここにも情報を付加してしまいましょう。
  例えば、
  
  ・重要度順に並べる
  ・アルファベット順に並べる
  ・別のコードで用いている順番と同じにする
  
  などです。
  例えば、
  
  detail   = request.POST.get('details')
  location = request.POST.get('location')
  phone    = request.POST.get('phone')
  email    = request.POST.get('email')
  url      = request.POST.get('url')
  
  と適当に並べていたとして、対応するHTMLの<input>フィールドが
  details, phone, email, url, locationの順番になっているなら、
  
  detail   = request.POST.get('details')
  phone    = request.POST.get('phone')
  email    = request.POST.get('email')
  url      = request.POST.get('url')
  location = request.POST.get('location')
  
  とした方が一貫性しています。
  ', curriculum_id: curriculum.id)
Content.create!(title: "6. コードをブロックや段落に分割", text: 'グループや階層をつくって1単位として分割することで、人間の脳は概要を掴みやすくなります。
  例えば、以下のようなC++コードがあったとします。
  
  class FrontentServer {
    public:
      FrontendServer();
      void ViewProfile(HttpRequest* request);
      void OpenDatabase(string location, string user);
      void SaveProfile(HttpRequest* request);
      string ExtractQueryParam(HttpRequest* request, string param);
      void ReplyOK(HttpRequest* request);
      void FindFriends(HttpRequest* request);
      void ReplyNotFound(HttpRequest* request, string error);
      void CloseDatabase(string location);
      ~FrontendServer();
  };
  
  これを、以下のようにグループに分けると、さらに概要を把握しやすくなります。
  
  class FrontentServer {
    public:
      FrontendServer();
      ~FrontendServer();
  
      // ハンドラ
      void ViewProfile(HttpRequest* request);
      void SaveProfile(HttpRequest* request);
      void FindFriends(HttpRequest* request);
  
      // リクエストとリプライのユーティリティ
      string ExtractQueryParam(HttpRequest* request, string param);
      void ReplyOK(HttpRequest* request);
      void ReplyNotFound(HttpRequest* request, string error);
  
      // データベースのヘルパー
      void OpenDatabase(string location, string user);
      void CloseDatabase(string location);
  };
  
  このような、より小さい単位への分割は、一般的な文章構成でも使われています。
  文章を段落に分ける意義は、視覚的な踏石を提供し、段落単位で移動できるようにすることです。
  ', curriculum_id: curriculum.id)
Exam.create!(question: "以下のコードを分かりやすく命名してください", question_code: "def test\nputs question\nend", answer_code:"def test\nputs answer\nend", explanation:"explain", curriculum_id: curriculum.id)
curriculum = Curriculum.find_by(name: "コメントをつける")
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
