extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_1_pressed():
	get_tree().change_scene_to_file("res://Levels/1.tscn")

func _on_2_pressed():
	pass

func _on_3_pressed():
	pass

func _on_exit_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")
