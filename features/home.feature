Feature:
Como jugador
Quiero ser saludado
Para sentir la aplicacion mas amena
Scenario: 
Given visito la pagina principal
Then deberia ver "Bienvenido"
Scenario: 
Given visito la pagina principal
When presiono el boton "Iniciar juego con un auto"
Then deberia ver una pagina con el titulo "Ingresar datos"
Scenario: 
Given visito la pagina principal
When presiono el boton "Ingresar cantidad de autos"
Then deberia ver una pagina con el titulo "Cantidad de autos"