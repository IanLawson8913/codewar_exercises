# At least six characters long
# contains a lowercase letter
# contains an uppercase letter
# contains a number

regex = //

p regex=~'fjd3IR9' #==0, true #
p regex=~'ghdfj32' #==0, false #
p regex=~'DSJKHD23' #==0, false #
p regex=~'dsF43' #==0, false #
p regex=~'4fdg5Fj3' #==0, true #
p regex=~'DHSJdhjsU' #==0, false #
p regex=~'fjd3IR9.;' #==0, false #
p regex=~'fjd3  IR9' #==0, false #
p regex=~'djI38D55' #==0, true #
p regex=~'a2.d412' #==0, false #
p regex=~'JHD5FJ53' #==0, false #
p regex=~'!fdjn345' #==0, false #
p regex=~'jfkdfj3j' #==0, false #
p regex=~'123' #==0, false #
p regex=~'abc' #==0, false #
p regex=~'123abcABC' #==0, true #
p regex=~'ABC123abc' #==0, true #
p regex=~'Password123' #==0, true #