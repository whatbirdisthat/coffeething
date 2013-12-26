t = require "../src/testclass"

exports.TestClassTest =

  'can use framework': (test) ->
    txt1 = "testvalue"
    test.equal(txt1, 'testvalue') #shouldn't it be equal(expected, actual) ?
    test.done()

  'can run methods coffee class': (test) ->
    t1 = new t
    txt2 = t1.echo("testvalue2")
    test.equal(txt2, 'testvalue2') #shouldn't it be equal(expected, actual) ?
    test.done()

  'can retrieve properties from coffee class': (test) ->
    t1 = new t("mystring3")
    test.notEqual(t1, null)
    txt3 = t1.MyString
    test.equal(txt3, 'mystring3') #shouldn't it be equal(expected, actual) ?
    test.done()

  'can interpolate strings with coffee class': (test) ->
    t1 = new t("mystring4")
    test.notEqual(t1, null)
    txt3 = t1.say('MyString4.1')
    test.equal(txt3, 'MyString4.1 - mystring4') #shouldn't it be equal(expected, actual) ?
    test.done()
