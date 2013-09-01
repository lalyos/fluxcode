env.install "editor.coffee", "//rawgithub.com/progrium/fluxcode/master/lib/editor.coffee"
env.install "cmd.coffee", "//rawgithub.com/progrium/fluxcode/master/lib/cmd.coffee"
env.install "dropbox.coffee", "//rawgithub.com/progrium/fluxcode/master/lib/dropbox.coffee"

env("dropbox.ready").add ->
	dropbox.push()

env("editor.ready").add ->
	editor.open("init.coffee")