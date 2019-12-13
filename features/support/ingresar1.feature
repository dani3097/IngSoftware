Feature: 
Como jugador 
Quiero introducir el comando avanzar del auto 2
Para que el auto avance una posicion segun su direccion

Scenario:
    Given visito pagina de ingresar Comandos del 1 auto
    And ingreso las filas "10" en el campo "filas"
    And ingreso las columnas "5" en el campo "cols"
    And ingreso posx "1" en el campo "posicionX"
    And ingreso posy "2" en el campo "posicionY" 
    And ingreso el origen "N" en el campo "sentido"
    And ingreso comando "AIADADIA" en el campo "movimientos"
    When presiono boton para poder obtener PosicioActual "Simular"
    Then deberia ver Posicion nueva de X como "0"
    Then deberia ver Posicion nueva de Y como "5"
    Then deberia ver Orientacion nueva como "N"

    