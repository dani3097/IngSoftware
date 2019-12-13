Feature:
Como Jugador 
Quiero saber el resultado de la secuencia de comandos 
Para conocer la ubicación final del auto
Scenario:
    Given visito la pagina jugar
    Then veo un mensaje "Ingresar datos"
Scenario:
    Given visito la pagina jugar
    Then veo una etiqueta "Ingresar posicion inicial"
Scenario:
    Given visito la pagina jugar
    When lleno el campo "filas" con "10"
    And lleno el campo "cols" con "10"
    And lleno el campo "posicionX" con "1"
    And lleno el campo "posicionY" con "1"
    And lleno el campo "sentido" con "N"
    And lleno el campo "movimientos" con "IAIAIAIAA"
    And presiono el boton "Simular"
    Then deberia ver una pagina con el titulo "Resultados"
