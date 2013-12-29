Literate Web Class Test Case
============================
_HttpClient     = require 'scoped-http-client'_


This is a proof that certain fundamental things are
achievable using nodejs and coffeescript

Given I have a literate WebClass

    WebClass = require "../src/litwebclass"

When I expect to see `{"audusd": 90}`
And I call GetJson

    expectedjson = JSON.parse '{ "audusd": 90 }'

Then Json is what I get

    exports.LitWebClassTest =
      'can recover json': (test) ->
        w = new WebClass
        newData = w.GetJson('{ "audusd": 90 }')
        test.equal(newData.audusd, expectedjson.audusd)
        test.done()

If the tests in this file pass it is possible to load an object from the WebClass


/
====


