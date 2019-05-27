extends RigidBody2D

# Declare member variables here. Examples:

var speedX = 0;
var speedY = 0;
var speedLimit = 100;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	speedY = 0;
	
	if(Input.is_action_pressed("ui_left")):
		speedY = -speedLimit;
	
	if(Input.is_action_pressed("ui_right")):
		speedY = speedLimit;
	
	if(Input.is_action_pressed("ui_up")):
		speedX = speedLimit;
		
	
	pass
