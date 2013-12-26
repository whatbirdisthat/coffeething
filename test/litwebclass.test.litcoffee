Literate Web Class Test Case
============================
_HttpClient     = require 'scoped-http-client'_


This is a proof that certain fundamental things are
achievable using nodejs and coffeescript

    WebClass = require "../src/litwebclass"

    class LitWebClassTest

Given I have a literate webclass

      setUp: (callback) ->
        @w = new WebClass()
        callback()

When I call GetJson

      'can recover json': (test) ->
        txt1 = "audusd"
        txt2 = "90"
        newData = @w.GetJson(txt1, txt2)

Then Json is what I get

        expectedjson = JSON.parse '{ "audusd": 90 }'
        test.equal(newData.audusd, expectedjson.audusd)
        test.equal(newData.audusd, 90)
        test.done()


    exports.LitWebClassTest = LitWebClassTest


If the tests in this file pass it is possible to load json from a url


/
====


