extends Node2D

const SPEED = 300.0

var Destination : Vector2 # VECTOR from position to destination


func _ready() -> void:
	Destination = Vector2.ZERO


func _process(delta: float) -> void:
	if Destination:
		position += move(Destination, delta)


func SetDestination(destinationCoords : Vector2):
	Destination = destinationCoords - position


func move(destination: Vector2, delta):
	var increment = destination.normalized() * SPEED * delta
	if increment.abs() >= destination.abs():
		increment = destination
	print(increment)
	Destination = destination - increment
	return increment
