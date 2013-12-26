Literate Web Class Test Case
============================


This is a proof that certain fundamental things are achievable using nodejs and coffeescript

    WebClass = require "../src/litwebclass"

    exports.LitWebClassTest =

1 Given I have a literate webclass
      setup: (callback) ->
        @w = new WebClass()

2 When I call GetJsonFromGoogle

      'can recover json': (test) ->
        txt1 = "audusd"
        txt2 = "90"
        newData = @w.GetJson(txt1, txt2)

3 Then Json is what I get

        test.equal(newData, '{ "audusd": "90" }') #shouldn't it be equal(expected, actual) ?
        test.done()



/
====


