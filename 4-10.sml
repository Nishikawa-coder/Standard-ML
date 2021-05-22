(*それぞれの名前を入力すると自己紹介と身長が出力されるような関数を書け*)


val taro = {name = "Taro", length = 177.7}
val hanako = {name = "Hanako", length = 151.4}
val yoshiki = {name = "Yoshiki", length = 180.0}

fun getname {name, length} = "Hello I'm " ^ name ^ ".The height me is " ^ Real.toString length^ "."