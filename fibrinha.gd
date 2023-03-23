extends KinematicBody2D

var velocidade : Vector2 = Vector2()
var direction : Vector2 = Vector2()

func _ready():
	pass
	
func read_input():
	velocidade = Vector2()
	
	if Input.is_action_pressed("ui_up"):
		velocidade.y -= 1
		direction = Vector2(0,-1)
		$AnimationPlayer.play("Pra_Cima")
		
	elif Input.is_action_pressed("ui_down"):
		velocidade.y += 1
		direction = Vector2(0,1)
		$AnimationPlayer.play("Pra_Baixo")

	elif Input.is_action_pressed("ui_left"):
		velocidade.x -= 1
		direction = Vector2(-1,0)
		$AnimationPlayer.play("Andando_Esquerda") 

	elif Input.is_action_pressed("ui_right"):
		velocidade.x += 1
		direction = Vector2(1,0)
		$AnimationPlayer.play("Andando_Direita")
	
	else:
		$AnimationPlayer.play("Parado")

	velocidade = velocidade.normalized()
	velocidade = move_and_slide(velocidade * 200)
	
func _physics_process(_delta):
	read_input()
