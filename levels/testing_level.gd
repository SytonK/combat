extends Node2D

@onready var hitbox = $Hitbox

func _process(delta):
	hitbox.position.x += 100 * delta


func _on_hitbox_hit(attack: Attack):
	print('hitbox hit ', attack.damage)


func _on_hurtbox_hurt(attack: Attack):
	print('hurtbox hurt ', attack.damage)
