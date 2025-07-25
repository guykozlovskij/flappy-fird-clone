extends Node2D

@export var speed: float = 100.0

# Called every frame
func _process(delta: float) -> void:
	position.x -= speed * delta
	
	# Checks if pipe went off screen + additional 200 pixels
	if position.x > get_viewport_rect().size.x - 200:
		queue_free()	
 
