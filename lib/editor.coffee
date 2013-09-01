$.when(
	env.load('//cdn.jsdelivr.net/codemirror/2.36/codemirror.js'),
	env.load('//cdn.jsdelivr.net/codemirror/2.36/codemirror.css'),
).done ->
	window.editor = {}
	editor.widget = CodeMirror(document.body)
	editor.widget.setSize null, "95%"
	editor.open = (name) ->
		editor.widget.setOption 'onChange', null
		editor.widget.setOption 'mode', {
			js: "javascript"
			coffee: "coffeescript"
		}[name.split('.').slice(-1)[0]]
		editor.widget.setValue env.get(name)
		editor.widget.focus()
		editor.widget.setOption 'onChange', ->
			env.put name, editor.widget.getValue()
	$.when(
		env.load('//cdn.jsdelivr.net/codemirror/2.37/mode/coffeescript/coffeescript.js'),
		env.load('//cdn.jsdelivr.net/codemirror/2.37/mode/javascript/javascript.js')
	).done ->
		env("editor.ready").fire()	