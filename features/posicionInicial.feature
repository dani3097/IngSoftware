Feature:
Como jugador 
Quiero introducir la posicion inicial del auto 
Para ubicar el auto en algun lugar del terreno que me guste
Scenario:
    Given visito la pagina jugar
    Then veo un mensaje "Ingresar datos"
Scenario:
    Given visito la pagina jugar
    Then veo una etiqueta "Ingresar posicion inicial"
Scenario:
    Given visito la pagina jugar
    When lleno el campo "posicionX" con "1"
    Then veo el valor "1" en el campo "posicionX"
Scenario:
    Given visito la pagina jugar
    When lleno el campo "posicionY" con "1"
    Then veo el valor "1" en el campo "posicionY"
Scenario:
    Given visito la pagina jugar
    When lleno el campo "sentido" con "N"
    Then veo el valor "N" en el campo "sentido"