Feature: Ahorcado
Como Jugador
Quiero que me muestre los guiones correspodientes a la palabra a adivinar 

	Scenario: Mostrar tantos guiones como letra tiene la palabra
		Given la palabra secreta 'CIRCO'
		Then debo ver '_ _ _ _ _'

