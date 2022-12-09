default:
	just format lint test

lint:
	find . -type f -name \*.gd ! -path "*/addons/*" | xargs gdlint

format:
	find . -type f -name \*.gd ! -path "*/addons/*" | xargs gdformat --line-length 119

test:
	/Applications/Godot.app/Contents/MacOS/Godot -d -s --path $PWD addons/gut/gut_cmdln.gd -gdir=res://test/unit --verbose -gexit
