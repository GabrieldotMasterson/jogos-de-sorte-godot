extends ProgressBar

var contagem = 0
var ligar = false
var pronto = false

func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ligar:
		if contagem < 100:
			contagem += 1
			value = contagem
		else:
			pronto = true
			ligar = false
			contagem = 0
			value = 0
