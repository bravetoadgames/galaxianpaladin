extends CharacterBody2D

var speed = 25000
var bulletPath = preload("res://Scenes/bullet.tscn")


func _ready():
	position.y = get_viewport().size.y/2
	$AnimationPlayer.play("shipEngine")
	set_process(true)

# --------------------------------------------
# Main loop
# --------------------------------------------
func _process(delta):
	handleInput(delta)
	move_and_slide()
	handleBoundaries()
	handleShooting()

# --------------------------------------------
# handle key input and movement
# --------------------------------------------
func handleInput(delta):
	var moveDirection = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	velocity = (moveDirection * speed) * delta


# --------------------------------------------
# keep player within viewport boundaries
# --------------------------------------------
func handleBoundaries():
		# Check the boundaries the ship may not leave
	if position.x <= 48:
		position.x=48
	if position.x >= get_viewport().size.x-48:
		position.x=get_viewport().size.x-48
	if position.y<=40:
		position.y=40
	if position.y>= get_viewport().size.y-40:
		position.y=get_viewport().size.y-40

# --------------------------------------------
# Instantiate a bullet sprite
# --------------------------------------------
func handleShooting():
	if Input.is_action_just_pressed("shoot"):
		var bullet = bulletPath.instantiate()
		get_parent().add_child(bullet)
		
		$SfxShoot.set_pitch_scale(randf_range(0.8,1.2))
		$SfxShoot.play()
		
		bullet.position.x = position.x+80
		bullet.position.y = position.y+6

