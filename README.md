coffeething
===========

the purpose of the **coffeething** is to be very basic

where possible it is written in

* coffeescript or even better

* literate coffeescript

Why **coffeething** ?
---------------------

Basically the coffeething is here just so I can prove
a few things to myself, like:

* can I define a class in a coffee file, and require it from another

* can I push objects to the constructor of a coffee class

* can I access properties of a coffee class

* can I run the methods of a coffee class

And, I want to compare the experience using

* `vim` in *nix World and

* `WebStorm` in Windows World

Why **literate-coffeescript** ?
-------------------------------

This is where it gets kinda cool (I think) because
I can use the literateness of `.litcoffee` files to
embed markdown docs right there in the test files,
so adding the human-readable usage docs to the source
itself - they say good code has no comments, but
there actually exists a place for good comments:

In the tests!

Testing literate coffeescript
-----------------------------
With `vim/node-inspector`:

Add this to package.json will give npm a script to run when called with `npm test`:

    "scripts": {
      "test": "./node_modules/.bin/nodeunit test/*"
    }

Note the `/*` in the test script - npm test can apply to a folder, or a list of files.
In a real shell, the `/*` is expanded and each result appended to the command parameters.
`npm test` then runs all the files in the folder `test`
not just those named `[class].test.coffee` which npm seems to want to do by default.

If you are in Windows World, use this:

    "scripts": {
      "test": ".\\node_modules\\.bin\\nodeunit test"
    }

Problem is, I couldn't get `nodeunit test\\*.*` to work. Because it's not a shell glob, we only get
`*.coffee` in our suite when we run `npm test`. The way around this, in Windows
World with WebStorm, is by associating the filetype `*.litcoffee` with a watcher.

Or just don't use windows.


/
========