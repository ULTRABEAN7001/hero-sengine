extends RigidBody2D

var limit := 1000000

func _physics_process(delta):
	print(constant_torque)
	if Input.is_action_pressed("ui_right"):
		if constant_torque < limit:
			constant_torque += 1000
		
	if Input.is_action_just_pressed("ui_left"):
		print("ok")
		apply_torque_impulse(-100000)
		

