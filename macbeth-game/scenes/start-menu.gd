extends Node2D

var scene = preload("res://scenes/main.tscn")

func _process(delta):
	if Input.is_action_just_pressed("ui_continue"):
		get_tree().change_scene_to_packed(scene)
	
