coffeething
===========

the purpose of the **coffeething** is to be very basic

where possible it is written in
* coffeescript or even better
* literate coffeescript

why **coffeething** ?
---------------------

Basically the coffeething is here just so I can prove
a few things to myself, like:
* can I define a class in a coffee file, and require it from another
* can I push objects to the constructor of a coffee class
* can I access properties of a coffee class
* can I run the methods of a coffee class

See, very basic stuff.

why **literate-coffeescript** ?
-------------------------------

This is where it gets kinda cool (I think) because
I can use the literateness of `.litcoffee` files to
embed markdown docs right there in the test files,
so adding the human-readable usage docs to the source
itself - they say good code has no comments, but
there actually exists a place for good comments:
in the tests!

WebStorm
========

I quite like WebStorm. Which is lucky, because I paid for it.

WebStorm makes tracing mouse-wavable, one thing my vim console will almost certainly
never do.

Unfortunately WebStorm doesn't have the ability out of the box to handle `litcoffee` files yet
and refuses to load any tests.

You can get around this by running `npm test` in the terminal window (or an actual terminal)

Showing `.litcoffee` files as `.md` files
-----------------------------------------
I configured WebStorm to treat `.litcoffee` files as markdown files by associating the file extension
in file.settings.file types.Markdown, this will get you markdown preview with grey code.

Not ideal, but hey. Also, and this is a bit of a thing - you cannot set breakpoints in a `.litcoffee` file
if you do this...

Compiling `.litcoffee` files in WebStorm
----------------------------------------

Getting them to compile is a matter of configuring a file watcher:

1 file.settings.ide settings.file watchers

2 add new watcher - copy the "CoffeeScript" watcher

3 configure to watch **Markdown Files**

Setting up this file watcher will produce some compiled gear each time
you hit the debug button.

So now all the `literate` bits look good, but the actual coffeescript
is grey - **but** when I debug the project little js files are booted
up for me.

So ok, we can't set breakpoints. Bit of a dealbreaker.

What WebStorm will do now:
--------------------------
So now all the `literate` bits look good, but the actual coffeescript
is grey - **but** when I debug the project little js files are booted
up for me.

This means I can debug things, say when I run the tests through the IDE.

But the quality of debugging is well, low.

Setting up to run tests from WebStorm
-------------------------------------

Here we need to create a new `configuration` and choose `nodeunit`.
A suitable nodeunit `node_modules` folder is required to tell Webstorm
where it is.

The run/debug configuration can be set up to run
all the tests in a folder, or a single file.

Adding this to your package.json will also help:

    "scripts": {
      "test": "./node_modules/.bin/nodeunit test/*"
    }

Then you can run `npm test` and all files in the folder will be read -
not just those named [class].test.coffee which npm seems to want to do.

The verdict.
------------

So - it turns out to be just easier to edit these things in vim,
and when it comes time to debug/trace just run node-inspector,
using a chromey browser to connect.

The WebStorm tools are not up to it just yet.



