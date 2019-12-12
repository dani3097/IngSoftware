Feature:
Como jugador
Quiero ser saludado
Para sentir la aplicacion mas amena
Scenario: 
Given visito la pagina principal
Then deberia ver "Bienvenido"
Scenario: 
Given visito la pagina principal
When presiono el boton "Iniciar juego"
Then deberia ver "Ingresar datos"