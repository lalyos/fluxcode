env.load("//cdnjs.cloudflare.com/ajax/libs/dropbox.js/0.10.1/dropbox.min.js").done ->
	window.dropbox = {}
	dropbox.client = new Dropbox.Client({key:"i1lmckal6yumnxp"})
	dropbox.client.authDriver(new Dropbox.AuthDriver.Popup({receiverUrl: "https://"+location.host+"/dropbox.html"}))
	dropbox.client.authenticate (err, _) ->
		if err
			console.log err
			return
		dropbox.push = (name) ->
			if name
				dropbox.client.writeFile "/#{env.space()}/#{name}", env.get(name)
			else
				for name in env.list()
					dropbox.client.writeFile "/#{env.space()}/#{name}", env.get(name)
			console.log "Pushed to Dropbox."
		dropbox.pull = (name) ->
			if name
				dropbox.client.readFile "/#{env.space()}/#{name}", (err, data) ->
					if err
						console.log err
						return
					env.put name, data
			else
				dropbox.client.readdir "/#{env.space()}/", (err, names) ->
					if err
						console.log err
						return
					for name in names
						dropbox.client.readFile "/#{env.space()}/#{name}", (err, data) ->
							env.put name, data
		env("dropbox.ready").fire()