# **Actividad 7\. Estructura y perfil del jugador**

**Perfil del jugador definido.** 

El jugador principal del juego Ghost Cleaner se clasifica bajo el perfil de achiever/triunfador dentro de la taxonomía de Richard Bartle citada por Jesse Schell, el cual está complementado fuertemente por la búsqueda del placer estético de purificación y desafío. Este jugador puede encontrar una gratificación psicológica en transformar un entorno caótico y contaminado en un espacio ordenado y despejado, experimentando una satisfacción inmediata al ver cómo se reducen los indicadores de suciedad. El estilo del usuario es táctico y metódico, ya que no busca la confrontación directa contra enemigos hostiles, sino saber repartir su tiempo y organizar su recorrido por el cuarto bajo la presión de no quedarse sin espacio en el tanque.  
La plataforma objetivo para el proyecto es la PC junto con el teclado, ya que las teclas responden al instante, lo cual permite moverse y usar la aspiradora al mismo tiempo con buena precisión dentro de la habitación. Además, el diseño del videojuego busca que sean sesiones cortas y modulares, las cuales estarán estructuradas en rondas cerradas de 2 minutos de duración, ya que como explica Scott Rogers en Level Up\!, las sesiones compactas permiten al jugador sentir un ciclo dramático completo sin tener que requerir a inversiones muy largas de tiempo, esto buscando la rejugabilidad inmediata.  
Para este videojuego el nivel de experiencia requerido es de casual a intermedio, ya que los objetivos y los controles son intuitivos desde el primer momento que se tiene contacto, lo cual les permite a los jugadores de poca destreza técnica comprender el sistema en cuestión de segundos, mientras que el aumento de dificultad reta a los jugadores con más experiencia a planear mejores rutas y reaccionar más rápido.

**Plataforma y tipo de experiencia.**   
La experiencia que se busca en el juego es a partir de una vista desde arriba y en 2D, donde se muestre toda la habitación de un solo vistazo. Siguiendo la recomendación de Scott Rogers, dejar la cámara quieta evita que el jugador se desoriente, previene mareos y quita puntos ciegos, logrando que se concentre por completo en vigilar el cuarto y planear sus movimientos.

A nivel emocional el juego busca combinar momentos de prisa con momentos de alivio, ya que según Jesse Schell con base en la importancia de la respuesta inmediata, cada mancha que se aspira produce un efecto visual y de sonido instantáneo y satisfactorio, de esta manera el estrés que siente el jugador al ver que la suciedad sube desaparece en cuanto logra vaciar el tanque en el contenedor central.

**Estructura general del juego.** 

El loop principal de juego está dividido en cuatro pasos sencillos: 

1. Mirar rápido la pantalla para ubicar dónde hay más manchas de ectoplasma.  
2. Acercarse y mantener presionada la barra espaciadora para aspirar con el cono frontal.  
3. Vigilar de reojo qué tan lleno va su tanque ya que tiene un máximo de 100 unidades y qué tan sucia está la habitación  
4. Correr al contenedor del centro y esperar 1.5 segundos sin moverse para vaciar la aspiradora.

Este ciclo continuo evita que el jugador se quede quieto y lo obliga a decidir todo el tiempo qué mancha atender primero y cuándo es momento de descargar.

En lugar de un mapa grande o abierto, el juego se desarrolla en una sola habitación cerrada donde las manchas brotan al azar y la estructura general se organiza en tres niveles de dificultad: Fácil, Medio y Difícil. Cada nivel dura una ronda fija de 2 minutos, pero cambia la velocidad con la que empieza a aparecer el ectoplasma y el margen de error del jugador. Además, la progresión no depende de comprar mejoras o desbloquear armas, sino de cómo el jugador mejora sus reflejos y aprende a moverse mejor conforme pasa de un nivel a otro. 

Al igual, el ritmo de cada partida está pensado para poder mantener al jugador entretenido y concentrado en todo momento, aplicando la idea del canal de flujo que explica Jesse Schell. En cada ronda, los primeros 30 segundos son tranquilos para que el jugador se acomode a los controles y al espacio. Entre el minuto y el minuto y medio, las manchas empiezan a salir más rápido, lo cual lo obliga a vaciar el tanque con mayor frecuencia, ya los últimos 30 segundos son los más intensos, donde la suciedad está casi al tope y cualquier error puede costar la partida, creando un cierre emocionante sin llegar a sentirse tramposo o injusto. 

**Justificación teórica de las decisiones.** 

Para el diseño de este videojuego llamado Ghost Cleaner me apoye primero que nada en Jesse Schell, en especial con la lente de la experiencia esencial, la cual nos recuerda que las reglas solo son herramientas para despertar emociones en el jugador. Cada límite del juego lo puse a propósito para generar esa sensación de prisa y el alivio de dejar todo limpio. Además, con la lente del estado dinámico, me puedo asegurar de que no haya secretos, como el tiempo restante, la suciedad del cuarto y el nivel de la aspiradora que se ven en pantalla todo el tiempo, permitiendo que el jugador tome decisiones justas y con información clara.

Ahora por otro lado, la investigación de Pawel Dobrowolski et al. (2015) justifica por qué elegí una vista desde arriba, ya que su estudio demostró que los juegos con vista aérea entrenan mejor la capacidad de seguir varios objetos a la vez con la mirada y de cambiar rápido de una tarea a otra, a diferencia de los juegos en primera persona. En Ghost Cleaner pasa exactamente eso, el jugador tiene que vigilar varias manchas apareciendo al mismo tiempo en las esquinas del cuarto, mientras decide constantemente si sigue aspirando o corre a vaciar el contenedor central.

Y por último, las bases prácticas las tomé de Scott Rogers en Level Up\!. Lo primero que hice, fue seguir su regla de tener un objetivo simple y claro, el cual es aguantar dos minutos sin que la suciedad llegue al 100%. También apliqué su "Teoría del Un-Fun" al quitar cosas que solo estorbarían o aburrirían, como inventarios difíciles o barras de vida, dejando solo el reto principal de limpiar contrarreloj. En cuanto a las Tres C, decidí solo usar una cámara fija y controles básicos con pocas teclas para garantizar que el jugador aprenda a jugar de inmediato y disfrute la experiencia rápida de un juego arcade. 