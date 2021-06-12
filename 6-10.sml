
val cloth = 0
val food = 0
val life = 0
val funny = 0


val _ = print ("あなたの支出を管理する家計簿です。入力できる種類は衣（日用品の支出等）、食（食費）、\n住（固定費）、交際費（趣味、遊びを含む）があります\n")
val _ = print ("まずは支出した金額を入力してください。\n全て入力し終わったら何も入力せずにエンターキーを押してください。\nその後、衣（日用品の支出等）の場合はcloth、食（食費）の場合はfood、\n住（固定費）の場合はlife、交際費（趣味等）の場合はfunnyを入力してください\n")

fun Kakeizentai c f d g = (*引数を使うことで数の記憶*)
let
    fun readIntList () = 
        case TextIO.inputLine TextIO.stdIn of
              NONE => nil
            | SOME l => 
                case Int.fromString l of
                NONE =>nil
              | SOME k =>
                    k :: readIntList ()

    val L = readIntList ()

    fun plus nil = 0
      | plus (h :: t) =
        h + plus t

    val a = plus L

    fun Kakei k L2 = k + plus L2 

    fun chukoku b =
    if
        b >1000
    then
        print("そんなに使っちゃったんですね…\n")
    else 
    ()

    fun Kakei2 L3 =
    let
      val a = TextIO.inputLine TextIO.stdIn
    in
      case a of NONE => ()
              | SOME l => 
    if 
        l = "cloth\n"
    then
        let
            val c = Kakei c L3
        in
        (   print(Int.toString c ^ "\n");
            print("衣: " ^ Int.toString c ^ "\n食: " ^ Int.toString f ^ "\n住: " ^ Int.toString d ^ "\n交際費: " ^ Int.toString g ^ "\n");
            print("続けて支出を入力してください\n");
            Kakeizentai c f d g 
        )
        end
    else if
        l = "food\n"
    then
         let
            val f = Kakei f L3
        in
        (   print(Int.toString f ^ "\n");
            print("衣: " ^ Int.toString c ^ "\n食: " ^ Int.toString f ^ "\n住: " ^ Int.toString d ^ "\n交際費: " ^ Int.toString g ^ "\n");
            print("続けて支出を入力してください\n");
            Kakeizentai c f d g 
        )
        end
    else if
        l = "life\n"
    then
        let
            val d = Kakei d L3
        in
        (   print(Int.toString c ^ "\n");
            print("衣: " ^ Int.toString c ^ "\n食: " ^ Int.toString f ^ "\n住: " ^ Int.toString d ^ "\n交際費: " ^ Int.toString g ^ "\n");
            print("続けて支出を入力してください\n");
            Kakeizentai c f d g 
        )
        end
    else if
        l = "funny\n"
    then
        let
            val g = Kakei g L3
        in
        (   print(Int.toString c ^ "\n");
            print("衣: " ^ Int.toString c ^ "\n食: " ^ Int.toString f ^ "\n住: " ^ Int.toString d ^ "\n交際費: " ^ Int.toString g ^ "\n");
            print("続けて支出を入力してください\n");
            Kakeizentai c f d g 
        )
        end
    else
        print("指定された文字でないので終了します\n")
    end
in
(
   
    chukoku a;
    Kakei2 L
)
end

val _ = Kakeizentai cloth food life funny

    






















