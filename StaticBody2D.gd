extends KinematicBody2D

# Declare member variables here. Examples:
var motion = Vector2();
const UP = Vector2(0, -1);
var speedLimit = 100;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	motion.y += 10;
	
	if(is_on_floor()):
		if(Input.is_key_pressed(KEY_UP)):
			motion.y = -speedLimit;
			
	if(Input.is_key_pressed(KEY_RIGHT)):
		motion.x = speedLimit;
	
	elif(Input.is_key_pressed(KEY_LEFT)):
		motion.x = -speedLimit;
		print(motion.x);
	else:
		motion.x = 0;
	
	motion = move_and_slide(motion);
	print(motion);
	pass
