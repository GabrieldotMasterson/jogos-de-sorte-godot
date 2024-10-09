extends Node2D

const moes_img = preload("res://arts/IMGmao.jpg")
const tesoura_img = preload("res://arts/tesoura.jpg")
const pedra_img = preload("res://arts/pedra.jpg")
const papel_img = preload("res://arts/papel.jpg")

func _on_button_jogar_pressed() -> void:
	$ProgressBar.ligar = true
	$Sprite2D.texture = moes_img
	$Label_resultado.text = "....carregando.."

func _process(delta: float) -> void:
	if $ProgressBar.pronto:
		var sorte = randi_range(1,3)
		if sorte == 1:
			$Sprite2D.texture = papel_img
			$Label_resultado.text = "--PAPEL--"
		elif sorte == 2:
			$Sprite2D.texture = tesoura_img
			$Label_resultado.text = "--TESOURA--"
		else:
			$Sprite2D.texture = pedra_img
			$Label_resultado.text = "--PEDRA--"
		$ProgressBar.pronto = false
	
			
