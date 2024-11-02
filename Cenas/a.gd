extends Area2D

@onready var target_label = $"../../Palavras/Caba/aDeCaba1"
@onready var target_label2 = $"../../Palavras/Caba/aDeCaba2"

func _ready() -> void:
	target_label.visible = false  # Começa invisível


func _on_body_entered(body: Node2D) -> void:
	print("Colidiu com: ", body.name)  # Para depuração
	if body.name == "Sheldon":
		print("Oi Sheldon!")
		target_label.visible = true  # Torna o TargetLabel visível
		target_label2.visible = true
	#target_label.visible = false
