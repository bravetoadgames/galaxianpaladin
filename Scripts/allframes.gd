extends Node2D

var score=0

# ----------------------------------
# Hide the mousepointer at the start
# ----------------------------------
func _ready():
	Input.mouse_mode=Input.MOUSE_MODE_HIDDEN


# ----------------------------------
# Use ESC key to quit program
# ----------------------------------
func _process(_delta):
	#$HUD.get_canvas(Label).text("Score:"+str(score))
	if Input.is_key_pressed(KEY_ESCAPE):
		get_tree().quit()
