extends Node

func _ready() -> void:
	var m1 = Float32Matrix.new(Vector2i(3,2))
	m1.data = [1,2,3,2,2,2]
	
	var m2 = Float32Matrix.new(Vector2i(2,3))
	m2.data = [2,2,3,4,3,2]
	
	var T0 = Time.get_ticks_msec()
	var m3 = m1.mul(m2)
	var T1 = Time.get_ticks_msec()
	print(T1-T0)
	print(m3.data)
	ResourceSaver.save(m3,"res://m3.tres")
