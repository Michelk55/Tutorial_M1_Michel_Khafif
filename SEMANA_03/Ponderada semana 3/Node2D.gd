extends Node2D

var retornarnum
var retornartexto



func _on_Button_pressed():
	var texto = $LineEdit.text
	if texto.is_valid_float():
		retornarnum = texto
		$ColorRect/Label.text = String(retornarnum)
	else:
		retornartexto = texto
		$ColorRect/Label.text = retornartexto
		
