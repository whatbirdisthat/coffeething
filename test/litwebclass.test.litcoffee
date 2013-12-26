Literate Web Class Test Case
============================


This is a proof that certain fundamental things are achievable using nodejs and coffeescript

    WebClass = require "../src/litwebclass"

    exports.LitWebClassTest =

1 Given I have a literate webclass
2 When I call GetJsonFromGoogle
3 Then Json is what I get

      'can recover json': (test) ->
        txt1 = "audusd"
        w = new WebClass()
        newData = w.GetJson(txt1)
        test.equal(newData, '{testvalue}') #shouldn't it be equal(expected, actual) ?
        test.done()



/
====


