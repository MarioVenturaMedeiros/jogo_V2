extends Node2D

export var ulr = "https://drive.google.com/file/d/1I5PNN1LfHsO-zaPgXp91Ot083TTnGf9a/view?usp=sharing"

var i = 0
var som = 0


func _ready():
	$cutscene1.hide()
	$cutscene2.hide()
	$cutscene3.hide()
	$cutscene4.hide()
	$cutscene5.hide()
	$cutscene6.hide()
	$cutscene7.hide()
	$cutscene8.hide()
	$continue.hide()
	$back.hide()

func cutscene(n):
	match n:
		0:
			i += 1
			$back.hide()
			$Background.hide()
			$Weather.hide()
			$butao_opcoes.hide()
			$Butao_Start.hide()
			$Audio_chuva.stop()
			$cutscene1.show()
			$continue.show()
			$cutscene2.hide()
			$cutscene3.hide()
			$cutscene4.hide()
			$cutscene5.hide()
			$cutscene6.hide()
			$cutscene7.hide()
			$cutscene8.hide()
			yield(get_tree().create_timer(2.0),"timeout")
			$cutscene2.show()
			yield(get_tree().create_timer(2.0),"timeout")
			$cutscene3.show()
		1:
			i += 1
			$cutscene1.hide()
			$cutscene2.hide()
			$cutscene3.hide()
			$cutscene5.hide()
			$cutscene6.hide()
			$cutscene7.hide()
			$cutscene8.hide()
			$back.hide()
			$cutscene4.show()
			yield(get_tree().create_timer(2.0),"timeout")
			$cutscene5.show()
			yield(get_tree().create_timer(2.0),"timeout")
			$cutscene6.show()
			$back.show()
		2:
			$back.hide()
			$cutscene1.hide()
			$cutscene2.hide()
			$cutscene3.hide()
			$cutscene4.hide()
			$cutscene5.hide()
			$cutscene6.hide()
			i += 1
			$cutscene7.show()
			yield(get_tree().create_timer(3.0),"timeout")
			$cutscene8.show()
			$back.show()
		3:
			get_tree().change_scene("res://cenas/batalha_shokinho.tscn")

func _on_Butao_Start_released():
	yield(get_tree().create_timer(0.3),"timeout")
	cutscene(i)

func _on_continue_pressed():
	cutscene(i)

func _on_back_pressed():
	i -= 2
	cutscene(i)

func _on_butao_opcoes_released():
	$butao_opcoes.hide()
	$Butao_Start.hide()
	
	$butao_continuar.show()
	$butao_volume.show()
	$butao_codigo_etica.show()

func _on_butao_continuar_released():
	$butao_continuar.hide()
	$butao_volume.hide()
	$butao_codigo_etica.hide()
	$volume_off.hide()
	$volume_on.hide()
	
	$Butao_Start.show()
	$butao_opcoes.show()

func _on_butao_volume_released():
	som += 1
	if som % 2 == 0:
		$volume_on.hide()
		$volume_off.show()
		$Audio_chuva.stop()
	elif som %2 != 0:
		$volume_off.hide()
		$volume_on.show()
		$Audio_chuva.play()



func _on_butao_codigo_etica_released():
	OS.shell_open(ulr)
