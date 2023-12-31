extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body.name == "Player":
		Game.playerGold += 5
		var tween = get_tree().create_tween()
		tween.tween_property(self, "position", position - Vector2(0,30), .8)
		tween.tween_property(self, "modulate:a", 0, .3)
		tween.tween_callback(queue_free)
