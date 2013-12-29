Literate Web Class
===================

This is a class to prove that we can get data from places

    class LitWebClass

The GetJson method is a wrapper around `JSON.parse`

      GetJson: (json) ->
        return JSON.parse(json)

    module.exports = LitWebClass

