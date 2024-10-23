extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -100.0

func _physics_process(delta):
	var direction = Input.get_vector("Left", "Right", "Up", "Down")  
	direction = direction.normalized()  
	
	if direction != Vector2.ZERO:
		velocity = direction * SPEED  
		move_and_slide()


		if direction.x < 0:
			$AnimatedSprite2D.play("Left")
		elif direction.x > 0:
			$AnimatedSprite2D.play("Right")
		elif direction.y < 0:
			$AnimatedSprite2D.play("Back")
		elif direction.y > 0:
			$AnimatedSprite2D.play("Front")
	else:
		velocity = Vector2.ZERO
		move_and_slide()
		$AnimatedSprite2D.play("Front")
