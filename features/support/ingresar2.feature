Feature: 
Como jugador 
Quiero introducir el comando avanzar del auto 2
Para que el auto avance una posicion segun su direccion
Scenario:
    Given visito la pagina jugar del auto 2
    Then veo mensaje "Ingresar datos"
Scenario:
    Given visito la pagina jugar del auto 2
    Then veo etiqueta "Ingresar movimientos"

Scenario:
    Given visito la pagina de ingresar Comandos del 2 auto
    And ingreso fila "10" en el campo "filas"
    And ingreso columnas "5" en el campo "cols"
    And ingreso la posx "1" en el campo "posicionX"
    And ingreso la posy "2" en el campo "posicionY" 
    And ingreso origen "N" en el campo "sentido"
    And ingreso comandos "AIADADIA" en el campo "movimientos"
    When presiono el boton para poder obtener PosicioActual "Simular"
    Then deberia ver la Posicion nueva de X como "0"
    Then deberia ver la Posicion nueva de Y como "5"
    Then deberia ver la Orientacion nueva como "N"

    