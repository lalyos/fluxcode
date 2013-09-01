env.install "editor.coffee", "//rawgithub.com/progrium/6386814/raw/editor.coffee"
env.install "cmd.coffee", "//rawgithub.com/progrium/6386814/raw/cmd.coffee"
env.install "dropbox.coffee", "//rawgithub.com/progrium/6386814/raw/dropbox.coffee"

env("dropbox.ready").add ->
	dropbox.push()

env("editor.ready").add ->
	editor.open("init.coffee")