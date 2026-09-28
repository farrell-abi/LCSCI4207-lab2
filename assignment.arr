import file("lab2-support.arr") as support

#Encryptor 1
support.encryptor1('Hello World')
support.encryptor1("help me")

#Observation - string-repeat X5

fun my-encryptor1(a :: String) -> String:
  string-repeat(a, 5)
end

support.test-encryptor1(my-encryptor1)

#Encryptor 2
support.encryptor2("hello world")
support.encryptor2("what is up?")

#Observation - substring 0 to 4

fun my-encryptor2(b :: String) -> String:
  string-substring(b, 0, 4)
end

support.test-encryptor2(my-encryptor2)

#Encryptor 3
support.encryptor3("hello world")
support.encryptor3("HELLO WORLD")
support.encryptor3('Are you doing anything at all?')
support.encryptor3('must be a string')
support.encryptor3('what do i need to write')

#Observation - just print the string

fun my-encryptor3(c :: String) -> String:
  doc: "this lowkey just doesn't do anything i don't think"
  string-replace(c, ".", "!")
end

support.test-encryptor3(my-encryptor3)
#NOTE: i have no idea what i am doing wrong. please help me

#Encryptor 4
support.encryptor4('hello world')

fun my-encryptor4(d :: String) -> String:
  string-repeat(string-substring(d, 0, 4), 5)
end
  
support.test-encryptor4(my-encryptor4)

#Encryptor 5
support.encryptor5('hello world')
support.encryptor5('great')
support.encryptor5('chippy')

fun my-encryptor5(e :: String) -> String:
  e1 = string-replace(e, 'a', 'b')
  e2 = string-replace(e1, 'e', 'f')
  e3 = string-replace(e2, 'i', 'j')
  e4 = string-replace(e3, 'o', 'p')
  e5 = string-replace(e4, 'u', 'v')
  e6 = string-replace(e5, "A", "B")
  e7 = string-replace(e6, 'E', "F")
  e8 = string-replace(e7, 'I', 'J')
  e9 = string-replace(e8, "O", "P")
  string-replace(e9, "U", "V")
end

support.test-encryptor5(my-encryptor5)

#Encryptor 6
support.encryptor6('Hello World')
support.encryptor6('RRRRRRR')
support.encryptor6("The quick brown fox jumps over the lazy dog.")
#Obervation all lowercase + remove 'r'
fun my-encryptor6(f :: String) -> String:
  string-replace(string-to-lower(f), "r", "")
end

support.test-encryptor6(my-encryptor6)

#Encyrptor 7
support.encryptor7('Hello World')
#observation = string contains
fun my-encryptor7(g :: String) -> Number:
  string-length(g)
end

support.test-encryptor7(my-encryptor7)

#Encryptor 8
support.encryptor8("Hello World")
#observation add 3! and repeat X3
fun my-encryptor8(h :: String) -> String:
  string-repeat(string-append(h, "!!!"), 3)
end

support.test-encryptor8(my-encryptor8)

#Encryptor 9
support.encryptor9('Hello World')
support.encryptor9('what')
support.encryptor9('love')
support.encryptor9("Number")
support.encryptor9("What gets zero?")

fun my-encryptor9(i :: String) -> Number:
  string-to-code-point(string-char-at(i, 0))
end

support.test-encryptor9(my-encryptor9)

#Encryptor 10
support.encryptor10("Hello World")
support.encryptor10("HELLO WORLD")
#observation = all lowercase, subsrting (0, 4), replace vowels with next letter

fun my-encryptor10(j :: String) -> String:
  a = my-encryptor1(j)
  b = my-encryptor6(a)
  c = my-encryptor5(b)
  my-encryptor4(c)
end

support.test-encryptor10(my-encryptor10)