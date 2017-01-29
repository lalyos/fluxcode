env.install "editor.coffee", "//rawgit.com/progrium/fluxcode/master/lib/editor.coffee"
env.install "cmd.coffee", "//rawgit.com/progrium/fluxcode/master/lib/cmd.coffee"
env.install "dropbox.coffee", "//rawgit.com/progrium/fluxcode/master/lib/dropbox.coffee"

env("dropbox.ready").add ->
	dropbox.push()

env("editor.ready").add ->
	editor.open("init.coffee")
