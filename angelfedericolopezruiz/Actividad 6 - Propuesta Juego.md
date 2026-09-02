### **Propuesta Conceptual de Juego: Run It Back**

**1\. Idea de videojuego original**  
Un juego de combate multijugador 1v1 en 2D con vista superior centrado en el control de la información y el posicionamiento en el entorno.

**2\. Descripción**

* **Mecánica principal:** Acechar, evadir y emboscar al oponente utilizando elementos interactivos del entorno (zonas de visión, sonido, teletransportadores) para manipular el flujo de información.  
* **Objetivo del jugador:** Localizar y eliminar al adversario asestando un único golpe letal antes de ser alcanzado.  
* **Reglas básicas:**  
  * Al iniciar la partida se puede elegir el mapa entre 3 opciones. Si ambos jugadores votan por uno, se selecciona ese, si cada uno vota diferente, se selecciona al azar entre los dos votos.  
  * La partida se rige por la regla de "un golpe, una baja".  
  * La visión general de la arena está oculta permanentemente por niebla de guerra; los jugadores solo ven lo que está en su línea de visión directa.  
  * Existen zonas de captura que otorgan visión global del mapa por unos segundos.  
  * Hay objetos de alto valor (como un escudo que absorbe un impacto) ubicados dentro de zonas peligrosas (barro que reduce drásticamente la velocidad de movimiento, suelo resbaloso).  
  * Al terminar la ronda, se puede retar de nuevo de forma inmediata si ambos jugadores aceptan. Se mantiene la cuenta de rondas ganadas entre cada duelo.  
* **Controles:**  
  * Movimiento WASD  
  * Control de dirección de la visión con el mouse  
  * Ataque (Clic Izquierdo): Un golpe rápido de corto alcance. Si acierta, la ronda termina.   
  * Dash (Clic Derecho): Un impulso rápido en la dirección del movimiento (1 uso por ronda).   
  * Bomba de Humo (Tecla E): Lanza un proyectil al puntero del ratón que crea una zona circular opaca durante 4 segundos. Ni la visión normal ni la “visión global” pueden ver a través de ella.  
  * 

**3\. Experiencia buscada (Estética)** 

El juego busca generar una sensación de tensión constante, paranoia y adrenalina. El jugador debe sentir el peso y el riesgo de cada paso que da. Al estar a un solo golpe de la derrota y casi ciego por la niebla de guerra, el miedo a ser emboscado lo obliga a jugar sumamente concentrado. Cuando un jugador logra engañar a su enemigo forzándolo a cometer un error, la tensión acumulada se libera en forma de una euforia inmensa, incentivando el deseo de revancha inmediata del jugador ganador y del perdedor (que busca no cometer el mismo error).

**4\. Justificación de la coherencia del diseño (MDA)** 

El diseño se sostiene en una alineación perfecta entre sus Mecánicas, las Dinámicas que estas generan y la Estética o experiencia final:

La mecánica de muerte de un solo golpe combinada con la ceguera de la niebla de guerra evita que los jugadores corran directamente a pelear. Obligar a los jugadores a acercarse para atacar y castigar el fallo con un enfriamiento elimina el uso de ataques aleatorios. En su lugar, emergen dinámicas de "gato y ratón". Los jugadores comienzan a calcular tiempos y medir riesgos. Por ejemplo, la mecánica de colocar un escudo dentro de una zona de velocidad reducida genera la dinámica del riesgo vs. recompensa: el jugador debe decidir si vale la pena quedar expuesto y ralentizado a cambio de una ventaja defensiva enorme.

Estas situaciones de riesgo calculado son el motor de la experiencia. Desde el punto de vista del diseñador, las zonas de fricción y las capturas de visión están ahí para propiciar deslices y errores de cálculo en los jugadores. Son estos errores forzados por el entorno los que rompen el estancamiento de la partida, obligan a los jugadores a interactuar y generan los picos de tensión y adrenalina que definen la estética del juego. No hay elementos extra, cada esquina del mapa está diseñada para favorecer el juego mental entre ambos contrincantes.

