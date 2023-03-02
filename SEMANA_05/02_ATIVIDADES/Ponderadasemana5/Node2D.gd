extends Node2D

var teste = false
var valor = 0
var numero = 0 # Variável com o nome corrigido
var lista = []  


func _on_Button_pressed():
	# Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text) # Falta o prefixo "$" antes do nome do nó LineEdit
	$LineEdit.text = str(numero) # Convertendo o número em str para exibi-lo no LineEdit


func _on_Button2_pressed():
	# Incrementando o número inserido pelo usuário
	 
	for i in range(10):
		numero = numero + i # Incrementando o número inserido pelo usuário
		lista.append(numero) # Adicionando a soma à lista
	$Label.text = str(numero) # Convertendo a soma em string para exibi-la no Label
	

func _on_Button3_pressed():

	var nome = "" # Adicionando uma variável para armazenar o nome do usuário
	nome = $LineEdit2.text  
	for i in range(len(lista)):
		if lista[i] % 2 == 1:
			nome += "baldo" # Adicionando "baldo" ao final do nome
		else:
			nome += " " # Adicionando um espaço ao final do nome 
	$Label2.text = nome
