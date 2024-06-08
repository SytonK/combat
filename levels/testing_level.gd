extends Node2D

@onready var hitbox = $Hitbox
@onready var blocked_hitbox = $BlockedHitbox

func _process(delta):
	hitbox.position.x += 100 * delta
	blocked_hitbox.position.x += 100 * delta


func _on_hitbox_hit(attack: Attack):
	print('hitbox hit ', attack.damage)


func _on_hurtbox_hurt(attack: Attack):
	print('hurtbox hurt ', attack.damage)


func _on_blocked_hitbox_blocked(_attack: Attack):
	print('blocked hitbox')

func _on_blocked_hurtbox_hurt(_attack: Attack):
	print('blocked hurtbox')
