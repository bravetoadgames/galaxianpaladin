extends StaticBody2D

@export var speed = 1000

func _physics_process(delta):
	position.x+=speed*delta
	destroyBullet()

	
func destroyBullet():
	if position.x > get_viewport().size.x+60:
		queue_free()
		get_parent().get_node("HUD").get_node("Score").adjust(10)

