WebStorm
========

I quite like WebStorm. Which is lucky, because I paid for it.

WebStorm makes tracing mouse-wavable, one thing my vim console will almost certainly
never do.

Unfortunately WebStorm doesn't have the ability out of the box to handle `litcoffee` files yet
and refuses to load any tests.

You can get around this by running `npm test` in the terminal window (or an actual terminal) in *nix World,
but in Windows World, `npm` won't run .litcoffee files for us even though they are in the `test` folder.

Showing `.litcoffee` files as `.md` files
-----------------------------------------
I configured WebStorm to treat `.litcoffee` files as markdown files by associating the file extension
in file.settings.file types.Markdown, this will get you markdown preview with grey code.

Not ideal, but hey. You do get a nice 'preview' view of the markdown. Slightly quicker than pushing the change
to github and refreshing the browser - but you lose the syntax colouring that github gives you.

Also, and this is a bit of a thing - you cannot set breakpoints in a `.litcoffee` file
if you do this...

On the other hand, setting up `*.litcoffee` files as `coffeescript` files will cause great pain
to the editor, which makes editing the files problematic.

Compiling `.litcoffee` files in WebStorm
----------------------------------------
Getting them to compile is a matter of configuring a file watcher:

    #1 go to file.settings.ide settings.file watchers

    #2 add new watcher - copy the "CoffeeScript" watcher

Setting up this file watcher will produce some compiled gear each time
you hit the debug button, being based on the `coffeescript` wathcher.

    #3 configure to watch **Markdown Files**

So now all the `literate` bits look good, though the actual coffeescript
is grey - **but** when I debug the project little js files are booted
up for me.

So ok, we can't set breakpoints. Bit of a dealbreaker.

Setting up to run tests from WebStorm
-------------------------------------

Here we need to create a new `configuration` and choose `nodeunit`.
A suitable `node_modules/nodeunit` folder is required so Webstorm
will know where it is.

The run/debug configuration can be set up to run
all the tests in a folder, or a single file.

