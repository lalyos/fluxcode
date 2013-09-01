window.cmd =
	current: ""
	index: 0
	
	open: ->
		cmd.current = ""
		cmd.index = 0
		c = $('<input type="text" size="100" id="flux_cmd" />')
		c.keypress (e) -> 
			if e.which == 13 # return
				cmd.run($(this).val())
				cmd.close()
		c.keydown (e) ->
			if e.which == 38 # up
				cmd.index += 1
				$(this).val(env.get(".history").split("\n").reverse()[cmd.index])
			else if cmd.index > 0 and e.which == 40 # down
				cmd.index -= 1
				if cmd.index == 0
					$(this).val(cmd.current)
				else
					$(this).val(env.get(".history").split("\n").reverse()[cmd.index])
			else if cmd.index == 0
				cmd.current = $(this).val()
		c.keyup (e) ->
			if e.which == 27 # escape
				cmd.close()
				e.stopPropagation()
		c.blur ->
			cmd.close()
		c.appendTo(document.body)
		c.focus()

	close: ->
		$("#flux_cmd").remove()

	run: (expression) ->
		console.log res if res = eval(CoffeeScript.compile("return " + expression))
		env.put('.history', env.get('.history') + expression + "\n") if cmd.index == 0

$(document).keyup (e) ->
	if e.which == 27 # escape
		cmd.open()