env.install "editor.coffee", "/lib/editor.coffee"
env.install "cmd.coffee", "/lib/cmd.coffee"

env("editor.ready").add ->
	editor.open("init.coffee")
