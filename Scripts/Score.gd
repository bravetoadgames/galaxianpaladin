extends Label

var value = 0

func _ready():
	update()

func reset():
	value = 0
	update()

func adjust(adjustment):
	value += adjustment
	update()

func update():
	$Value.text = str(value)
	
