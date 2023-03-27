extends CharacterBody2D

var speed : int = 300;
var vel : Vector2 ;
var motion : Vector2 ;

func _physics_process(delta):
	pass
	if Input.is_action_pressed("up"):
		vel.y = -1;
		vel.x = 0;
	if Input.is_action_pressed("down"):
		vel.y = 1;
		vel.x = 0;
	if Input.is_action_pressed("right"):
		vel.x = 1;
		vel.y = 0;
	if Input.is_action_pressed("left"):
		vel.x = -1;
		vel.y = 0;
	
	motion = vel * speed * delta;
	move_and_collide(motion);
	vel = Vector2.ZERO;
	
