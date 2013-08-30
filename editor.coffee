$.when(
	env.load('http://codemirror.net/2/lib/codemirror.js'),
	env.load('http://codemirror.net/2/lib/codemirror.css')
).done ->
	window.editor = {}
	editor.widget = CodeMirror(document.body) 
	editor.open = (name) ->
		editor.widget.setOption('onChange', null)
		editor.widget.setValue(env.retrieve(name))
		editor.widget.focus()
		editor.widget.setOption 'onChange', ->
			env.store(name, editor.widget.getValue())