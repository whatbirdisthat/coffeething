Literate Web Class Test Case
============================


This is a proof that certain fundamental things are achievable using nodejs and coffeescript

    lt = require "../src/litwebclass"
    exports.LitWebClassTest =

1 Can I use **nodeunit** to compare a string with a string?

      'can use framework': (test) ->
        txt1 = "testvalue"
        test.equal(txt1, 'testvalue') #shouldn't it be equal(expected, actual) ?
        test.done()



/
====


