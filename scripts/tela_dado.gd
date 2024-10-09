extends Node2D

var lados_n = 6 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Label.text = str(lados_n)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $ProgressBar.pronto:
		var sorte = randi_range(1, lados_n)
		$Label_resultado.text = str(sorte)
		$ProgressBar.pronto = false


func _on_menos_bot_pressed() -> void:
	if lados_n >= 3:
		lados_n -= 1
	$Label.text = str(lados_n)

func _on_mais_bot_pressed() -> void:
	if lados_n < 99:
		lados_n += 1
	$Label.text = str(lados_n)


func _on_jogar_bot_pressed() -> void:
	$ProgressBar.ligar = true
	$Label_resultado.text = "..."
