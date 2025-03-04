class_name Hurtbox
extends Area2D 


signal hurt(attack: Attack, defense: Defense)

@export var defense: Defense


func _init() -> void:
	collision_layer = 0
	area_entered.connect(_on_area_entered)


func _on_area_entered(hitbox: Hitbox) -> void:
	if hitbox:
		hurt.emit(hitbox.attack, defense)
		
		hitbox.on_hit(defense)
