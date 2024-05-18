extends Label

# Load the metadata.json file
var metadata = {}
func _ready():
	var file = FileAccess.open("res://metadata.json",FileAccess.READ)
	var content = file.get_as_text() 

	text = content
