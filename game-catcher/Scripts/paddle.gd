extends Area2D

var SPEED = 300
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	var left = Input.is_action_pressed("ui_left");
	var right = Input.is_action_pressed("ui_right")
	
	if (left):
		position.x -= SPEED * delta;
	
	if (right):
		position.x += SPEED * delta;
