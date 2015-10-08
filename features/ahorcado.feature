Feature: Ahorcado
Como Jugador
Quiero que me muestre los guiones correspodientes a la palabra a adivinar 

	Scenario: Mostrar tantos guiones como letra tiene la palabra
		Given la palabra secreta 'CIRCO'
		Then debo ver '_ _ _ _ _'

	Scenario: Usuario ingresa una letra y presiona el boton OK
		Given que el usuario debe ingresar letra
		When  recorre la palabra CIRCO buscando la letra "A"
		Then debo ver 'LETRA NO ES COINCIDENTE'
