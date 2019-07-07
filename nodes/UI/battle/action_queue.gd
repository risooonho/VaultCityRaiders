extends Control

var panel = load("res://nodes/UI/battle/ActionQueueItem.tscn")

func addEntry(A, pos):
	var P = panel.instance()
	P.init(A, pos+1)
	add_child(P)
	P.set_position(Vector2(0, pos * P.get_size().y + 5))

func init(Q:Array, P:Array = []) -> void: #Q:Action Queue, array of actions.
	for i in get_children():
		i.queue_free()
	var pos = 0
	for i in Q:
		addEntry(i, pos)
		pos += 1
	for i in P:
		addEntry(i[2], pos)
		pos += 1
