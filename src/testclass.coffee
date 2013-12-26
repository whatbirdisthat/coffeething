#test class

class TestClass

  constructor: (mystring) ->
    @MyString = mystring

  echo: (astring) ->
    return astring

  say: (something) ->
    return "#{something} - #{@MyString}"


module.exports = TestClass
