**Nombre del videojuego:** Mutant

**Concepto General y Objetivo** "Mutant" un roguelike 2D de perspectiva isométrica y estética pixel art minimalista. En este juego, el jugador asume el rol de un microorganismo inmerso en un entorno hostil. El objetivo principal consiste en sobrevivir a oleadas sucesivas de depredadores y superar la última sala. Para lograrlo, la clave radica en la adaptación: el microorganismo debe someterse a evoluciones estratégicas frente a amenazas desconocidas antes de que su vitalidad se agote.

**Núcleo Jugable** El eje de la experiencia es la adquisición y aplicación de mutaciones permanentes e irreversibles. Al superar cada oleada, el jugador debe invertir Puntos de Mutación (PM) en un árbol de mejoras, modificando atributos como el ataque, la velocidad, la visión o la defensa de manera inmediata.

**Controles y Sistema de Reglas**

* El movimiento se rige por las teclas WASD, permitiendo desplazarse en 8 direcciones, mientras que el ataque se ejecuta con el clic izquierdo apuntando con el cursor.  
* La barra espaciadora otorga un breve momento de invulnerabilidad para esquivar ataques.  
* Los enemigos derrotados sueltan Puntos de Mutación (PM), los cuales funcionan como la moneda obligatoria para evolucionar en las pausas entre rondas.  
* Alcanzar 0 puntos de vida (HP) resulta en muerte permanente y el reinicio de la partida.  
* La victoria se consigue al limpiar todas las oleadas y abatir a la amenaza final.

**Diseño de la Experiencia (Enfoque MDA)**

* **Mecánicas implementadas:** El título se construye sobre un sistema de oleadas de dificultad ascendente, combate en perspectiva isométrica con esquivas temporales y un árbol de habilidades basado en los Puntos de Mutación.  
* **Dinámicas emergentes:** Se genera un ciclo constante de toma de decisiones estratégicas. El jugador pasa de la microgestión en el frenesí de esquivar y atacar, a la macrogestión de la pausa táctica para elegir su próxima evolución. La incertidumbre sobre qué enemigos aparecerán fuerza a equilibrar constantemente entre especializar al personaje o diversificar sus estadísticas.  
* **Estética y Sensaciones:** La irreversibilidad de las mutaciones inyecta una fuerte tensión en cada elección, transmitiendo al jugador una atmósfera de adaptación darwiniana donde se debe evolucionar o morir. Esto hace que cada alteración se sienta con un peso real, brindando una sensación de identidad progresiva y transformando la frustración de la derrota en un impulso para iniciar un nuevo intento con una estrategia diferente.

