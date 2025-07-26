extends Node2D

@export var moving_pipes := preload("res://Scenes/pipes.tscn")
@export var spawn_interval:= 2.0 # seconds
@export var min_y: int = 1000
@export var max_y: int = 1500
@onready var spawn_timer: Timer = $Timer

func _ready() -> void:
	spawn_timer.wait_time = spawn_interval
	spawn_timer.start()

func _on_timer_timeout() -> void:
	var pipe_instance = moving_pipes.instantiate()
	pipe_instance.scale = Vector2(3.5, 3.5)
	pipe_instance.position = Vector2(get_viewport_rect().size.x + 100, randf_range(min_y, max_y))
	add_child(pipe_instance)
