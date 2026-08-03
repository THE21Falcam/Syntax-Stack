extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $SHOW.get_children().size() == 0:
		if $CHOOSE.visible == false:
			$ADD.visible = true
			$SHOW.visible = false
		else:
			$ADD.visible = false

func _on_back_button_down() -> void:
	visible = false


func _on_add_button_down() -> void:
	$ADD.visible = false
	$CHOOSE.visible = true


func _on_move_button_down() -> void:
	$CHOOSE.visible = false
	$SHOW.visible = true
	var move =preload("res://COMMANDS/Move/move.tscn")
	$SHOW.add_child(move.instantiate())


func _on_jumpline_button_down() -> void:
	$CHOOSE.visible = false
	$SHOW.visible = true
	var move =preload("res://COMMANDS/JumpToLine/Jump2Line.tscn")
	$SHOW.add_child(move.instantiate())
