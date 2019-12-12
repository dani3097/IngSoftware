Feature:
Como jugador 
Quiero introducir el tamaño de la superficie del terreno 
Para poner un limite en donde se movera el auto
Scenario:
    Given visito la pagina jugar
    Then veo un mensaje "Ingresar datos"
Scenario:
    Given visito la pagina jugar
    Then veo una etiqueta "Ingresar dimensiones del terreno"
Scenario:
    Given visito la pagina jugar
    When lleno el campo "filas" con "10"
    Then veo el valor "10" en el campo "filas"
Scenario:
    Given visito la pagina jugar
    When lleno el campo "cols" con "10"
    Then veo el valor "10" en el campo "cols"
    