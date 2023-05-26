extends StaticBody2D

@onready var player = get_node("/root/level/Player")

func _ready():
	pass
	
# ---------------------------------
# Main loop
# ---------------------------------
func _physics_process(delta):
	handlePosition()
	pass
	
# --------------------------------------------------------------
# Mirror the enemy's Y position mirrored to player's Y position
# --------------------------------------------------------------
func handlePosition():
	position.y = get_viewport().size.y - player.position.y
	
