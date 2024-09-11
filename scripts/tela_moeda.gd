extends Node2D


func _on_button_jogar_pressed() -> void:
	$ProgressBar.ligar = true
	$Label_resultado.text = "....carregando.."

func _process(delta: float) -> void:
	if $ProgressBar.pronto:
		var sorte = randi_range(1,2)
		if sorte == 1:
			$Label_resultado.text = "--COROA--"
		else:
			$Label_resultado.text = "--CARA--"
		$ProgressBar.pronto = false
	
			
