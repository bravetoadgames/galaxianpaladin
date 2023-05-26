extends Sprite2D

@export var speed: int = 60

func _ready():
	pass

# ----------------------------------
# Main loop
# ----------------------------------
func _process(delta):
	handleScrolling(delta)

# ----------------------------------
# Scroll the background
# ----------------------------------
func handleScrolling(delta):
	offset.x-=speed*delta
	if offset.x<=-1080:
		offset.x=0
