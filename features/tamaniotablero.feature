Feature:
Como: jugador del videojuego
Quiero: Poder seleccionar el tamanio del tablero
para: poder jugar mas perzonalizadamente


Scenario:
Given este en la pagina principal
When selecciono "3" del campo "size"
And presiono el boton "INICIAR"

Then deberia ver "Escogio el tamanio 3x3"