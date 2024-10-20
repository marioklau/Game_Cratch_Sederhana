extends Node2D

@onready var label : Label = $Label
var score = 0
var rand_x 
var position_y

func _ready() -> void:
	randomize()
	
func _on_paddle_area_entered(_area: Area2D) -> void:
	score += 1
	label.text = "%03d" % score
	_area.queue_free()
	
func _on_timer_timeout() -> void:
	var diamond = preload("res://Scenes/diamond.tscn").instantiate()
	rand_x = randf_range(-517, 147)
	position_y =  -350
	diamond.global_position = Vector2(rand_x, position_y)
	add_child(diamond)
	$Timer.wait_time = 2

func _on_timer_child_entered_tree(_node: Node) -> void:
	pass # Replace with function body.
