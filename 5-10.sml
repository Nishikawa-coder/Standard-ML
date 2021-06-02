(*あるコンビニにきのこの山とたけのこの里がそれぞれ171円、216円で売っている。
みんななるべくたけのこの里が買いたいがお金が足りない人はきのこの山を買う。
さらに足りない人は何も買わない。名前と所持金をnameラベル、moneyラベルとして
リストを入力し、誰が何を買ったかリストとして出力する*)

datatype KinokoorTakenoko = Kinoko | Takenoko | NONE

fun buy nil = nil
  | buy (h :: t) = 
    if 
        #money h >= 216
    then 
        (#name h, Takenoko) :: buy t
    else if 
        #money h < 216 andalso #money h >=171
    then
        (#name h, Kinoko) :: buy t
    else (#name h, NONE) :: buy t