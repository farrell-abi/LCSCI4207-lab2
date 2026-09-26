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
  doc: "this lowkey just doesn't do anything i dont think"
  c
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
  string-replace(e, 'a', 'b')
  string-replace(e, 'e', 'f')
  srting-replace(e, 'i', 'j')
  string-replace(e, 'o', 'p')
end