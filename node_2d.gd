extends Node2D
var d_tex = load("res://d.tres")
var f_tex = load("res://f.tres") 
var g_tex = load("res://g.tres") 
var r_tex = load("res://r.tres")
var tex = [0, 1, 2, 3]
var te = 4
var loaded = 0
func _ready():
	te = tex.pick_random()
func _process(_delta):
	if te == 0:
		$MeshInstance2D.set_texture(d_tex)
		$MeshInstance2D/Line2D.set_texture(d_tex)
		$Day.set_texture(d_tex)
	if te == 1:
		$MeshInstance2D.set_texture(f_tex)
		$MeshInstance2D/Line2D.set_texture(f_tex)
		$Day.set_texture(f_tex)
	if te == 2:
		$MeshInstance2D.set_texture(g_tex)
		$MeshInstance2D/Line2D.set_texture(g_tex)
		$Day.set_texture(g_tex)
	if te == 3:
		$MeshInstance2D.set_texture(r_tex)
		$MeshInstance2D/Line2D.set_texture(r_tex)
		$Day.set_texture(r_tex)
	if loaded < 1:
		self.translate(Vector2(0,1))
		if loaded < 0:
			self.translate(Vector2(0,-2))
	if loaded > 0:
		self.translate(Vector2(1,0))
		if loaded > 1:
			self.translate(Vector2(-2,0))
func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
func _on_red():
	loaded = 1
func _on_green():
	loaded = -1
func _on_blow():
	loaded = 2
