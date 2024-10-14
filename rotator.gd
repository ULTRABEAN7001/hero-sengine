extends RigidBody2D

var limit := 10000
var C : int
var is_water := true
@onready var tail_1 = $tail1
@onready var tail_2 = $tail2
@onready var trail_timer = $trail_timer
@onready var trail1 = $tail1/trail
@onready var trail2 = $tail2/trail


func _physics_process(delta):
	print(constant_torque)
	if Input.is_action_pressed("ui_right") and C < 100:
		C += 1
	if Input.is_action_pressed("ui_left")and C > -196:
		C -= 1
		
	if C == 100 and is_water or C == -196 and is_water == false:
		constant_torque = 35000
		trail1.visible = true
		trail2.visible = true
	else: 
		constant_torque = 0
		trail1.visible = false
		trail2.visible = false
		

func _on_button_pressed():
	is_water = true

func _on_button_2_pressed():
	is_water = false
	
		





	
	
