fun unzip L = 
  let

fun age_unzip nil = nil
  | age_unzip ({name, age} :: t) = 
      age :: age_unzip t

fun name_unzip nil = nil
  | name_unzip ({name, age} :: t) = 
      name :: name_unzip t

   in
   {names = name_unzip L, ages = age_unzip L}
    end
    