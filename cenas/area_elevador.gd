extends Area2D

func _on_Area2D2_body_entered(body:Node):
	get_tree().change_scene("res://cenas/batalha_shokinho.tscn")
