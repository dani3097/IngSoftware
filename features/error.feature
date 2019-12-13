Feature:
Como Jugador 
Quiero que no se acepten valores negativos o campos en blanco
Para mantener una logica simple de movimiento y obtener un buen resultado
Scenario:
    Given visito la pagina jugar
    Then veo un mensaje "Ingresar datos"
Scenario:
    Given visito la pagina jugar
    Then veo una etiqueta "Ingresar posicion inicial"
Scenario:
    Given visito la pagina jugar
    When lleno el campo "filas" con "-10"
    And lleno el campo "cols" con "10"
    And lleno el campo "posicionX" con "1"
    And lleno el campo "posicionY" con "1"
    And lleno el campo "sentido" con "N"
    And lleno el campo "movimientos" con "IAIAIAIAA"
    And presiono el boton "Simular"
    Then deberia ver una pagina con el titulo "Error"
    And veo una etiqueta "Campo en blanco o valor negativo"

Scenario:
    Given visito la pagina jugar
    Then veo un mensaje "Ingresar datos"
Scenario:
    Given visito la pagina jugar
    Then veo una etiqueta "Ingresar posicion inicial"
Scenario:
    Given visito la pagina jugar
    When lleno el campo "filas" con ""
    And lleno el campo "cols" con "10"
    And lleno el campo "posicionX" con "1"
    And lleno el campo "posicionY" con "1"
    And lleno el campo "sentido" con "N"
    And lleno el campo "movimientos" con "IAIAIAIAA"
    And presiono el boton "Simular"
    Then deberia ver una pagina con el titulo "Error"
    And veo una etiqueta "Campo en blanco o valor negativo"