extends Control

# Called when the node enters the scene tree for the first time
func _ready():
	var chicken = load("res://main_menu/Chicken.tscn")
	for x in range(100):
		var c = chicken.instance()
		call_deferred("add_child", c)
		yield(get_tree().create_timer(0.01), "timeout")
