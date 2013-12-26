Literate Web Class
===================

This is a class to prove that we can get data from places

    class LitWebClass

The GetJson method is really just a simple key-value pair
thing.

      GetJson: (name, value) ->
        return JSON.parse('{ "' + name  + '": "' + value + '" }')

Very important line of code:

    module.exports = LitWebClass

