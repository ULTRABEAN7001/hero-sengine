extends Node2D

@onready var rotator = $Rotator
@onready var fire = $Fire
@onready var temperature = $Temperature
@onready var explanation = $Explanation
var temp: int

func _process(delta):
	temperature.text = str(rotator.C) + " °C"
	fire.play("default")
	fire.visible = true
	if rotator.C <= 30:
		fire.visible = false
	elif rotator.C > 30:
		fire.visible = true
		fire.scale.x = rotator.C*0.01+0.25

func _on_button_3_pressed():
	if explanation.visible == false:
		explanation.visible = true
	else:
		explanation.visible = false

