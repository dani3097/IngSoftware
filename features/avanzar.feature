Feature: 
Como jugador 
Quiero introducir el comando avanzar 
Para que el auto avance una posicion segun su direccion
Scenario:
    Given visito la pagina jugar
    Then veo un mensaje "Ingresar datos"
Scenario:
    Given visito la pagina jugar
    Then veo una etiqueta "Ingresar movimientos"
#Scenario:
   
   # Given visito la pagina jugar
   # When presiono el boton "Avanzar"
   # Then deberia ver "Ingresar datos"