extends Node2D

export var ulr = "https://drive.google.com/file/d/1I5PNN1LfHsO-zaPgXp91Ot083TTnGf9a/view?usp=sharing"
var acerto = 0
var vagabunda = 0
var n = 0
var vida = 4
var volume_status = 0

func _ready():
	$Button1.position.x = 310
	$Button1.position.y = 413

	$Button2.position.x = 667
	$Button2.position.y = 413

	$Button3.position.x = 667
	$Button3.position.y = 505

	$Button4.position.x = 310
	$Button4.position.y = 505
	
	$coracao_vazio1.hide()
	$coracao_vazio2.hide()
	$coracao_vazio3.hide()
	$coracao_vazio4.hide()
	
	$continuar.hide()
	$volume.hide()
	$etica.hide()
	$tela_escura.hide()
	$volume_on.hide()
	$volume_off.hide()

func respostas():
	match n:
		1:
			$Button2.show()
			$Button3.show()
			$Button4.show()
			
			$Button1.position.x = 667
			$Button1.position.y = 413
			
			$Button2.position.x = 310
			$Button2.position.y = 413
			
			$RichTextLabel1.clear()
			$RichTextLabel2.clear()
			$RichTextLabel3.clear()
			$RichTextLabel4.clear()
			
			$RichTextLabel1.add_text('adalove')
			$RichTextLabel2.add_text('certa')
			$RichTextLabel3.add_text('seu cu?')
			$RichTextLabel4.add_text('me mama')
			print(vida)
			
		2:
			$Button2.show()
			$Button3.show()
			$Button4.show()
			
			$Button1.position.x = 667
			$Button1.position.y = 505
			
			$Button3.position.x = 667
			$Button3.position.y = 413
			
			$RichTextLabel1.clear()
			$RichTextLabel2.clear()
			$RichTextLabel3.clear()
			$RichTextLabel4.clear()
			
			$RichTextLabel1.add_text('caguei')
			$RichTextLabel2.add_text('fds')
			$RichTextLabel3.add_text('certa')
			$RichTextLabel4.add_text('meu pau')
			print(vida)
			
		3:
			$Button2.show()
			$Button3.show()
			$Button4.show()
			
			$RichTextLabel1.clear()
			$RichTextLabel2.clear()
			$RichTextLabel3.clear()
			$RichTextLabel4.clear()
			
			$RichTextLabel1.add_text('i dai')
			$RichTextLabel2.add_text('fodase?')
			$RichTextLabel3.add_text('certa')
			$RichTextLabel4.add_text('fibrinha 10mil')
			print(vida)
			
		4:
			$Button2.show()
			$Button3.show()
			$Button4.show()
			
			$Button1.position.x = 667
			$Button1.position.y = 413
			
			$Button3.position.x = 667
			$Button3.position.y = 505
			
			$RichTextLabel1.clear()
			$RichTextLabel2.clear()
			$RichTextLabel3.clear()
			$RichTextLabel4.clear()
			
			$RichTextLabel1.add_text('piroca')
			$RichTextLabel2.add_text('certa')
			$RichTextLabel3.add_text('poxa vida')
			$RichTextLabel4.add_text('agora fudeu de vez')
			print(vida)

func _on_Button2_released():
	if $Button2.position.x == 310 and $Button2.position.y == 413 :
		$RichTextLabel1.hide()
	if $Button2.position.x == 667 and $Button2.position.y == 413 :
		$RichTextLabel2.hide()
	if $Button2.position.x == 667 and $Button2.position.y == 505 :
		$RichTextLabel3.hide()
	if $Button2.position.x == 310 and $Button2.position.y == 505 :
		$RichTextLabel4.hide()
	$Button2.hide()
	vida -= 1

func _on_Button3_released():
	if $Button3.position.x == 310 and $Button3.position.y == 413 :
		$RichTextLabel1.hide()
	if $Button3.position.x == 667 and $Button3.position.y == 413 :
		$RichTextLabel2.hide()
	if $Button3.position.x == 667 and $Button3.position.y == 505 :
		$RichTextLabel3.hide()
	if $Button3.position.x == 310 and $Button3.position.y == 505 :
		$RichTextLabel4.hide()
	$Button3.hide()
	vida -= 1

func _on_Button4_released():
	if $Button4.position.x == 310 and $Button4.position.y == 413 :
		$RichTextLabel1.hide()
	if $Button4.position.x == 667 and $Button4.position.y == 413 :
		$RichTextLabel2.hide()
	if $Button4.position.x == 667 and $Button4.position.y == 505 :
		$RichTextLabel3.hide()
	if $Button4.position.x == 310 and $Button4.position.y == 505 :
		$RichTextLabel4.hide()
	$Button4.hide()
	vida -= 1
	
func _on_Button1_released():
	$RichTextLabel4.show()
	$RichTextLabel3.show()
	$RichTextLabel2.show()
	$RichTextLabel1.show()
	n += 1
	respostas()

func _on_botao_pause_released():
	$continuar.show()
	$volume.show()
	$etica.show()
	$tela_escura.show()
	
	$Button1.hide()
	$Button2.hide()
	$Button3.hide()
	$Button4.hide()
	
	$RichTextLabel1.hide()
	$RichTextLabel2.hide()
	$RichTextLabel3.hide()
	$RichTextLabel4.hide()

func _on_continuar_released():
	$continuar.hide()
	$volume.hide()
	$etica.hide()
	$tela_escura.hide()
	
	$Button1.show()
	$Button2.show()
	$Button3.show()
	$Button4.show()
	
	$RichTextLabel1.show()
	$RichTextLabel2.show()
	$RichTextLabel3.show()
	$RichTextLabel4.show()
	
	$volume_off.hide()
	$volume_on.hide()
	
func _on_volume_released():
	volume_status += 1
	if volume_status % 2 == 0:
		$volume_on.hide()
		$volume_off.show()
	elif volume_status %2 != 0:
		$volume_off.hide()
		$volume_on.show()

func _process(_delta):
	if vida == 3:
		$coracao4.hide()
		$coracao_vazio4.show()
	elif vida == 2:
		$coracao3.hide()
		$coracao_vazio3.show()
	elif vida == 1:
		$coracao2.hide()
		$coracao_vazio2.show()
	elif vida == 0:
		$coracao1.hide()
		$coracao_vazio1.show()


func _on_etica_released():
	OS.shell_open(ulr)
