extends Node2D

func _ready():
	if Music.som % 2 == 1:
		 $audio_cena.play()
