Literate Test Class
===================

you're better off editing this in vim than you are IntelliJ unfortunately
just sayin

    class LitTestClass

      constructor: (mystring) ->
        @MyString = mystring

We can ECHO a string back to you, for connectivity testing

      echo: (astring) ->
        return astring

We can use the built in string templating we get from coffee

      say: (something) ->
        return "#{something} - #{@MyString}"


    module.exports = LitTestClass
