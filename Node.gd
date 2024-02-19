extends Node
var fuckyou = [33.3, 66.6, 99.9, 133.2, 166.5, 199.8, 233.1, 266.4, 299.7, 333, 366.3, 399.6, 432.9, 466.2, 499.5, 532.8, 566.1, 599.4, 632.7, 666, 699.3, 732.6, 765.9, 799.2, 832.5, 865.8, 899.1, 932.4, 965.7]
var getfuck = [33.3, 66.6, 99.9, 133.2, 166.5, 199.8, 233.1, 266.4, 299.7, 333, 366.3, 399.6, 432.9, 466.2, 499.5]
var fucked = 0
var bitch = 0
var dirt = [0, 1, 2, 3]
var numb = 0
signal meat
signal little
signal golf
@export var breakyou: PackedScene
func _ready():
	fucked = fuckyou.pick_random()
	bitch = getfuck.pick_random()
	numb = dirt.pick_random()
func _on_timer_timeout():
	if numb == 0:
		numb = dirt.pick_random()
		_bunk()
	if numb == 1:
		numb = dirt.pick_random()
		_dick()
	if numb == 2:
		numb = dirt.pick_random()
		_lack()
	if numb == 3:
		numb = dirt.pick_random()
		_probe()
	else:
		numb = dirt.pick_random()
func _bunk():
	var fucker = breakyou.instantiate()
	var space = Vector2(33.3/2, -16.65) + Vector2(1 * fucked, 0)
	fucker.set_position(space)
	add_child(fucker)
	fucked = fuckyou.pick_random()
func _dick():
	var fucker = breakyou.instantiate()
	var space = Vector2(-16.65, 33.3/2) + Vector2(0, 1 * bitch)
	fucker.set_position(space)
	fucker.rotation -= PI/2
	add_child(fucker)
	self.meat.connect(fucker._on_red.bind())
	meat.emit()
	bitch = getfuck.pick_random()
func _lack():
	var fucker = breakyou.instantiate()
	var space = Vector2(33.3/2, 682.65) + Vector2(1 * fucked, 0)
	fucker.set_position(space)
	fucker.rotation -= PI
	add_child(fucker)
	self.little.connect(fucker._on_green.bind())
	little.emit()
	fucked = getfuck.pick_random()
func _probe():
	var fucker = breakyou.instantiate()
	var space = Vector2(1015.65, 33.3/2) + Vector2(0, 1 * bitch)
	fucker.set_position(space)
	fucker.rotation += PI/2
	add_child(fucker)
	self.golf.connect(fucker._on_blow.bind())
	golf.emit()
	bitch = getfuck.pick_random()
