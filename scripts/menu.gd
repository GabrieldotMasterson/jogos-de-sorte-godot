extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_texture_button_caraoucoroa_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/tela_moeda.tscn")

func _on_texture_button_dado_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/tela_dado.tscn")

func _on_texture_button_pedrapapel_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/tela_papel.tscn")
