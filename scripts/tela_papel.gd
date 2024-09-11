extends Node2D

var tesoura = preload("res://arts/dado00.png")
var pedra = preload("res://arts/jokenpo00.png")
var papel = preload("res://arts/moeda00.png")

func _on_button_jogar_pressed() -> void:
	$ProgressBar.ligar = true
	$Label_resultado.text = "....carregando.."

func _process(delta: float) -> void:
	if $ProgressBar.pronto:
		var sorte = randi_range(1,3)
		if sorte == 1:
			$Label_resultado.text = "--PAPEL--"
		elif sorte == 2:
			$Label_resultado.text = "--TESOURA--"
		else:
			$Label_resultado.text = "--PEDRA--"
		$ProgressBar.pronto = false
	
			
