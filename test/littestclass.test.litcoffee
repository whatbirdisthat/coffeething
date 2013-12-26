Literate Test Case
==================


This is a proof that certain fundamental things are achievable using nodejs and coffeescript

It is written in `literate-coffeescript` as an experiment in making my WebStorm bork so
spectacularly that I totally switch back to vim muttering about the 50 bucks I gave to jetbrains


    lt = require "../src/littestclass"
    exports.LitTestClassTest =

1 Can I use **nodeunit** to compare a string with a string?

      'can use framework': (test) ->
        txt1 = "testvalue"
        test.equal(txt1, 'testvalue') #shouldn't it be equal(expected, actual) ?
        test.done()

2 Can I instantiate a new coffee class and run one of its methods?

      'can run methods coffee class': (test) ->
        t1 = new lt
        txt2 = t1.echo("testvalue2")
        test.equal(txt2, 'testvalue2') #shouldn't it be equal(expected, actual) ?
        test.done()

3 Can I use the constructor of a coffee class, then retrieve the value of a property?

      'can retrieve properties from coffee class': (test) ->
        t1 = new lt("mystring3")
        test.notEqual(t1, null)
        txt3 = t1.MyString
        test.equal(txt3, 'mystring3') #shouldn't it be equal(expected, actual) ?
        test.done()

4 Can I write a little string interpolator in the coffee class that uses the built-in interpolation coffee gives me?

      'can interpolate strings with coffee class': (test) ->
        t1 = new lt("mystring4")
        test.notEqual(t1, null)
        txt3 = t1.say('MyString4.1')
        test.equal(txt3, 'MyString4.1 - mystring4') #shouldn't it be equal(expected, actual) ?
        test.done()

Proofs:
------------

The idea here is to check that a bunch of things are possible using both coffeescript and literate-coffeescript
using the same interpreter etc - running from the webstorm ide, vim, etc

If the above is all possible, and these tests pass from WebStorm and vim, then this is Very Good News

Unfortunately WebStorm doesn't have the ability out of the box to handle `litcoffee` files yet
and refuses to load any tests

You can get around this by running `npm test` in the terminal window (or an actual terminal)

Showing `.litcoffee` files as `.md` files
-----------------------------------------
I configured WebStorm to treat `.litcoffee` files as markdown files by associating the file extension
in file.settings.file types.Markdown, this will get you markdown preview with grey code.

Not ideal, but hey.

Compiling `.litcoffee` files in WebStorm
========================================

Getting them to compile is a matter of configuring a file watcher:

1 file.settings.ide settings.file watchers

2 add new watcher, copy the "CoffeeScript" watcher

3 configure to watch **Markdown Files**


What Webstorm will do now:
--------------------------
So now all the `literate` bits look good, but the actual coffeescript
is grey - **but** when I debug the project little js files are booted
up for me.

This means I can debug things, say when I run the tests through the IDE.

Setting up to run tests from Webstorm
-------------------------------------

Here we need to create a new `configuration` and choose `nodeunit`.
A suitable nodeunit `node_modules` folder is required to tell Webstorm
where it is.

The configuration can be set up to run all the tests in a folder, or a single file.



/
====
