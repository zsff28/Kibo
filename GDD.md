Portada.

Imagen de portada del juego.

Título del juego:
Sloppy Spectre

Número de versión del documento:
Versión 1

Nombre de los integrantes del equipo.
Sofia Fernanda Flores Amador
Jesús Emiliano Gutierrez Luna
Ángel Federico López Ruiz
Karol Citlaly Ramirez Martinez

Fecha de publicación:
15 de Septiembre: 
Número de versión.
Version 1

Game Goals

Historia del juego
Spooky es un pequeño y travieso fantasma que habita una mansión, donde su vida de vagar y desordenar se ve amenazada por el limpiador y su implacable limpieza, empeñado en desinfectar cada rincón con su aspiradora y linterna. Para reclamar tu territorio, decides expulsarlo manchando todo con ectoplasma hasta que el lugar sea completamente inhabitable y sucio.
	
	¿Cómo el jugador comienza el juego? 
	El jugador inicia en el centro de la escena, emergiendo de un portal espiritual morado/azul tras un conteo de 3 segundos que al terminar aparecerá la frase "¡A ensuciar!".
	
	¿Cómo el jugador se mueve de un lugar a otro? 
	Levitando libremente en 4 direcciones en vista superior 2D, atravesando todo el escenario sin colisiones de terreno y esquivando únicamente los conos de luz de la linterna del limpiador.	
	
	¿Cómo termina?
	Victoria final: Tras superar el nivel del vecindario al completar más del 80% de suciedad, spooky celebra y el vecindario queda cubierto de ectoplasma verde fluorescente.
	Derrota: Si el tiempo expira sin alcanzar al menos el 80% o el escenario llega al 0% de suciedad, los limpiadores sanitizan el portal y Spooky queda desvanecido por una aspiradora.

Gameplay

	Vista previa. Movimientos específicos que el jugador hará.  
	Foto del control con los movimientos que generarán las teclas.  
	Descripción de tipos de gameplay.

Requerimientos Técnicos.

	¿Qué herramientas usará?
	-Cámara ortográfica 2D en vista superior (Top-Down). La cámara estará fija abarcando la totalidad de la habitación, o seguirá al jugador (Camera2D como hijo del nodo del jugador) en niveles que excedan el tamaño 	de 	la pantalla.
	-Desarrollado en Godot Engine utilizando GDScript como lenguaje principal, debido a su eficiencia para juegos 2D y manejo de nodos.
	
	Implementación de Mecánicas:
	IA del Limpiador: Implementado por el programador mediante NavigationAgent2D para pathfinding, esquivando paredes para alcanzar manchas de ectoplasma o patrullar. Sus rutas y comportamientos no serán "hard coded", 	sino controlados por un sistema de Máquina de Estados (State Machine: Patrullando, Aspirando, Persiguiendo luz).
	Sistema de manchas (Ectoplasma):Implementado meediante pintado en un TileMap para calcular el porcentaje de área cubierta (% de suciedad).
	
	¿Qué diseño de herramientas usará el juego?
	Los escenarios se construirán utilizando el sistema integrado de TileMaps de Godot. No se crearán herramientas externas complejas, se dependerá del editor de nodos y variables exportadas para ajustar tiempos y 		velocidad de los conserjes por nivel.
	
Mundo del juego.  
	  
	El juego se desarrolla en un vecindario suburbano cotidiano, aparentemente tranquilo y pulcro. El contraste visual es el pilar del mundo: los entornos comienzan siendo impecables, ordenados y con colores cálidos y realistas, pero a medida que el jugador interactúa con ellos, se van transformando en escenarios caóticos, teñidos de ectoplasma y manchas fantasmales.
	
	Descripción general de los niveles

    Nivel 1: El Interior de la Casa :
        Habitaciones interconectadas (sala, cocina, habitaciones).
        Gran densidad de objetos cotidianos (alfombras impecables, floreros, refrigeradores, cortinas).
        Rutas estrechas que facilitan emboscadas y cobertura en rincones o atravesando muebles.

    Nivel 2: El Patio Exterior y Jardín:
        Mezcla de zonas de jardín cuidado, piscinas/fuentes, cobertizos, tendederos y cercas.
        Mayor amplitud para desplazarse, con obstáculos como podadoras y mangueras.
        Superficies naturales (césped podado, tierra, flores de concurso) listas para ser cubiertas de fango espectral.

    Nivel 3: La Calle de la Vecindad:
        Vía pública, aceras, autos estacionados, fachadas de vecinos, árboles urbanos y postes de luz.
        Gran escala donde el objetivo de cubrir el porcentaje de superficie requiere mayor esfuerzo por el tamaño aumentado.
		
Descripción de cómo se presentan los niveles al jugador.
	
	Flujo de presentación de niveles
	Los niveles se introducen de manera progresiva y narrativa, reflejando la expansión de la plaga fantasmal:
	
    Medidor de cobertura / Meta visible:
        La interfaz muestra de forma clara el porcentaje de suciedad necesario para que el fantasma reclame esa zona y desbloquee la salida/siguiente área.

    Puntos de transición lógicos:
        El paso de un nivel al siguiente ocurre de forma orgánica dentro del mundo:
            Tras arruinar la casa, el fantasma atraviesa la puerta trasera o ventana hacia el patio.
            Tras arruinar el patio, derriba la reja o se cuela por el portón hacia la calle de la vecindad.

	¿Cómo navega el jugador entre niveles?
	En el Modo Historia / Progresión principal:
	La navegación es lineal y continua. Al alcanzar el porcentaje de suciedad requerido, se reproduce una pequeña animación de victoria y el jugador se traslada inmediatamente a la siguiente zona.
	En el Menú de Selección de Niveles:
	Se representa mediante un plano/mapa ilustrado de la propiedad y el vecindario. Los niveles ya conquistados aparecen marcados con manchas de ectoplasma, mostrando la puntuación máxima obtenida ( y permitiendo 		rejugarlos.

Experiencia de juego.
* Descripción de la experiencia:
  Un juego arcade rápido, tenso y cómico de "gato y ratón" donde el tiempo apremia constantemente.

* Condiciones:  
  * Ganar: Alcanzar el 80% de suciedad dentro de los 120 segundos.
  * Perder: Que el medidor llegue a 0% de suciedad o que el temporizador llegue a 0.

* Número de rondas:  
  1 ronda rápida de 2 minutos por nivel/partida.

* Pantalla de inicio y menú:  
  * Opciones: Jugar, Selección de Nivel, Ajustes (Volumen, Sensibilidad, Mapeo de teclas), Créditos, Salir.
  * Guardado: `ConfigFile` nativo de Godot o archivo JSON para almacenar progreso (estrellas por nivel y récords de tiempo).

* Game Flowchart (Flujo de juego):
  `Pantalla de Inicio` ➔ `Selección de Nivel` ➔ `Gameplay (2 min)` ➔ ¿>= 80% Suciedad? 
  * SÍ: `Pantalla de Victoria` ➔ `Siguiente Nivel / Menú`
  * NO: `Pantalla de Game Over` ➔ `Reintentar / Menú`

* Descripción del entorno: 
  Gráficos estilizados *Cartoon*, iluminación tenue con contrastes fuertes generados por el cono de luz del conserje y el brillo fluorescente del ectoplasma verde.
  
Mecánicas del juego.
* Sistema HUD:  
  * Barra de Suciedad Global: Ubicada en la parte superior central (`ProgressBar` de 0% a 100%).
  * Tanque de Ectoplasma: Medidor con forma de frasco (100 unidades) al lado del personaje.
  * Timer: Cuenta regresiva de `02:00` controlada por un nodo `Timer`.

* Modo de combate:  
  No hay combate directo contra el limpiador; la interacción es defensiva y de evasión.

* Descripción de mecánicas clave:
  1. Disparo de Ectoplasma: Al pulsar `ESPACIO`, el jugador gasta ectoplasma para rociar el piso.
  2. Portal Espiritual (Centro de la sala): Zona para recargar 100 unidades de ectoplasma y ocultarse.
  3. Aspirado del Limpiador: El NPC sigue rutas mediante `NavigationAgent` y aspira manchas, reduciendo el % de suciedad.
  4. Linterna y Aturdimiento: Si la linterna o el conserje tocan al fantasma, este sufre un *Stun* de 3 segundos sin poder moverse ni disparar.

* Checkpoints: No aplica (partidas cortas de 2 minutos).

* Power-ups:
   Ectoplasma Súper Viscoso: Reduce la velocidad de aspirado del conserje por 5 segundos.

* Sistema de Vidas y Muerte:  
  El fantasma no "muere", pero los *stuns* consumen un tiempo valioso, aumentando la probabilidad de perder por agotamiento de tiempo.  

Progresión del juego  
	  
	¿Cómo interactuan la historia y el gameplay?

Sistema de niveles.

El juego cuenta con 3 niveles. El objetivo por nivel es el mismo: cubrir más del 80% del mapa de suciedad. 

Sistema base:
* Movimiento 2D mediante las fechas del teclado.
* Acción (ensuciar) con barra espaciadora.
* Sistema de tanque ectoplasma: Número de 0-100.
* Variable: Suciedad_Zona. Variable numérica.
* Condición de Victoria por nivel: Variable >= 240

Nivel 1. Introducción / Tutorial

* Descripción: Una habitación dentro de la mansión. El nivel no tiene obstáculos para que el jugador se familiarice con las mecánicas del juego. En el centro se encuentra el portal para recargar el tanque.
* Objetivo: Alcanzar al menos el 80% de suciedad en el suelo antes de que finalice el tiempo.
* Recompensa del nivel: Desbloqueo nivel 2.
* Descripción del gameplay del nivel: El jugador mueve al personaje por todo el escenario mediante las flechas del teclado, cubriéndolo con la tecla espacio hasta que se acaban las 100 unidades. Si esto ocurre, se debe recargar el tanque en el centro del escenario (en un portal) para continuar.
* Enemigos encontrados: 1 Limpiador Novato (se desplaza a velocidad lenta).
* HUD del nivel. Igual en todos los niveles. En la esquina superior derecha se muestra el tiempo restante. En la parte superior de la pantalla, en el centro, el porcentaje del escenario cubierto. El personaje principal tiene un tanque que muestra la cantidad de unidades restantes.
* Mecánicas específicas: No hay mecánicas específicas por nivel. Las mecánicas son las mismas en los 3 niveles.
  * Tiempo: 120 segundos (02:00 minutos).
  * Daño / Efectos: El contacto con la linterna o el limpiador provoca un inmovilidad del personaje durante 3 segundos.

Nivel 2. Intermedio.

* Descripción: Un jardín trasero de la mansión. En el centro se encuentra el portal para recargar el tanque. El nivel no cuenta con obstáculos fuera del enemigo principal: el limpiador.
* Objetivo: Alcanzar al menos el 80% de suciedad en el suelo antes de que finalice el tiempo.
* Recompensa del nivel: Desbloqueo nivel 3.
* Descripción del gameplay del nivel: El jugador mueve al personaje por todo el escenario mediante las flechas del teclado, cubriéndolo con la tecla espacio hasta que se acaban las 100 unidades. Si esto ocurre, se debe recargar el tanque en el centro del escenario (en un portal) para continuar.
* Enemigos encontrados: 1 Limpiador (se desplaza a velocidad moderada).
* HUD del nivel. Igual en todos los niveles. En la esquina superior derecha se muestra el tiempo restante. En la parte superior de la pantalla, en el centro, el porcentaje del escenario cubierto. El personaje principal tiene un tanque que muestra la cantidad de unidades restantes.
* Mecánicas específicas:  No hay mecánicas específicas por nivel. Las mecánicas son las mismas en los 3 niveles.
  * Tiempo: 120 segundos (02:00 minutos).
  * Daño / Efectos: El contacto con la linterna o el limpiador provoca un inmovilidad del personaje durante 3 segundos.

Nivel 3. Difícil.Descripción: Nivel final. El vecindario. En el centro se encuentra el portal para recargar el tanque. El nivel no cuenta con obstáculos fuera del enemigo principal: el limpiador.
* Objetivo: Alcanzar al menos el 80% de suciedad en el suelo antes de que finalice el tiempo.
* Recompensa del nivel: Pantalla de victoria. Final "bueno".
* Descripción del gameplay del nivel: El jugador mueve al personaje por todo el escenario mediante las flechas del teclado, cubriéndolo con la tecla espacio hasta que se acaban las 100 unidades. Si esto ocurre, se debe recargar el tanque en el centro del escenario (en un portal) para continuar.
* Enemigos encontrados: 1 Limpiador experto (se desplaza a velocidad rápida).
* HUD del nivel. Igual en todos los niveles. En la esquina superior derecha se muestra el tiempo restante. En la parte superior de la pantalla, en el centro, el porcentaje del escenario cubierto. El personaje principal tiene un tanque que muestra la cantidad de unidades restantes.
* Mecánicas específicas: No hay mecánicas específicas por nivel. Las mecánicas son las mismas en los 3 niveles.
  * Tiempo: 120 segundos (02:00 minutos).
  * Daño / Efectos: El contacto con la linterna o el limpiador provoca un inmovilidad del personaje durante 3 segundos.

Player Characters  
	  
	Nombre, imagen de concepto, descripción de la motivación y relación con otros personajes jugables.  
	Métricas del jugador. Movimientos, condiciones y daño.

Enemigos

	Arte conceptual.  
	Descripción.  
	Métricas.  
	Patrones de movimiento.  
	Ataque, daño que causa, y cómo causarle daño.  
	Reacciones, daño, muerte.  
	¿Se incluyen jefes?

Música y efectos especiales.  
	Lista de música.  
	Música por nivel y pantallas (inicio, pausa, opciones, créditos)  
	Tono y sentimientos de la música.

Perfil del jugador objetivo

	Demografía:
	Jugadores de todas las edades, con un enfoque principal en jóvenes (10-24 años) debido a la estética cartoon y pixel art. Plataforma objetivo principal: PC (teclado/ratón) con posible port a Web (navegadores). 
	Intereses:
	Jugadores que disfrutan de juegos casuales y arcades de ritmo rápido. Aquellos que buscan experiencias mecánicas sencillas de entender, con un bucle de jugabilidad adictivo (Siguiendo un pensamiento de "un nivel 	más"). Disfrutan del  estilo dibujos animados y estéticas de Halloween o spooky. 
	Hábitos de juego:
	Jugadores que prefieren sesiones cortas e intensas (partidas de 2 minutos). Tolerantes a la repetición y que buscan superar sus propios récords de tiempo o perfeccionar su estrategia de movimiento.
	
Identificación de influencias y referencias relevantes.  
	Juegos similares  
	Elementos 
