extends Node2D


var num = []



func _on_Button2_pressed():
	var num_str = $LineEdit.text
	if num_str == null:
		return
		
	var num_list = num_str.split(" ")
	for numero in num_list:
		num.append(float(numero))
	
	$ColorRect2/Label.text = "Sua lista: " + String(num)
	
	print(num)
	num.clear()

