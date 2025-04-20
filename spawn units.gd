extends Node

var UnitToSpawn = preload("res://assets/placeholder_scene.tscn") # path to the scene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var UnitInstance = UnitToSpawn.instantiate()
	add_child(UnitInstance)
