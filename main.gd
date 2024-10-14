extends Node2D

@onready var rotator = $Rotator
@onready var fire = $Fire
@onready var temperature = $Temperature
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
		

	
