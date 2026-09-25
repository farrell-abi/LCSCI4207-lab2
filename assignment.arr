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

#Observation - just print the string

fun my-encryptor3(c :: String) -> String:
  c
end

support.test-encryptor3(my-encryptor3)