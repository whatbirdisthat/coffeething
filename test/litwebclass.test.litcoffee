Literate Web Class Test Case
============================
_HttpClient     = require 'scoped-http-client'_


This is a proof that certain fundamental things are
achievable using nodejs and coffeescript

    WebClass = require "../src/litwebclass"
    expectedjson = JSON.parse '{ "audusd": 90 }'

Given I have a literate WebClass

When I call GetJson

Then Json is what I get

    exports.LitWebClassTest =
      'can recover json': (test) ->
        txt1 = "audusd"
        txt2 = "90"
        w = new WebClass
        newData = w.GetJson(txt1, txt2)
        test.equal(newData.audusd, expectedjson.audusd)
        test.done()

If the tests in this file pass it is possible to load json from the WebClass


/
====


