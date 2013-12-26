Literate Web Class
===================

you're better off editing this in vim than you are IntelliJ

just sayin


    class LitWebClass

      constructor: (mystring) ->
        @MyString = mystring

We can ECHO a string back to you, for connectivity testing

      echo: (astring) ->
        return astring

We can use the built in string templating we get from coffee

      say: (something) ->
        return "#{something} - #{@MyString}"


      GetJson: (name, value) ->
        return '{ "' + name  + '": "' + value + '" }'

    module.exports = LitWebClass

