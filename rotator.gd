extends RigidBody2D

var limit := 10000
var C : int
var is_water := true

func _physics_process(delta):
	print(constant_torque)
	if Input.is_action_pressed("ui_right") and C < 100:
		C += 1
	if Input.is_action_pressed("ui_left")and C > -196:
		C -= 1
		
	if C == 100 and is_water or C == -196 and is_water == false:
		constant_torque = 35000
	else: 
		constant_torque = 0
		



func _on_button_pressed():
	is_water = true


func _on_button_2_pressed():
	is_water = false
