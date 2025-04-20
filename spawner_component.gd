extends Node
class_name SpawnerComponent


func spawn_unit(unit_scene : Node, position : Vector2) -> void:
	get_parent().add_child(unit_scene)
	if position:
		unit_scene.position = position
	else:
		unit_scene.position = Vector2(100.0, 100.0)
