extends Node2D

@onready var hitbox: Hitbox = $Hitbox

func _process(delta: float) -> void:
	hitbox.position.x += 100 * delta


func _on_hitbox_hit(attack: Attack, defense: Defense) -> void:
	print('hitbox attack:', attack.damage)
	print('hitbox defense:', defense.defense)


func _on_hurtbox_hurt(attack: Attack, defense: Defense) -> void:
	print('hurtbox attack:', attack.damage)
	print('hurtbox defense:', defense.defense)
