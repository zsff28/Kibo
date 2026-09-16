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

	¿Qué herramientas usará? Tipo de cámara, jefes.  
	¿Lo implementará el programador? ¿Diseñador? ¿Hard coded? ¿Scripted?  
	¿Qué diseño de herramientas usará el juego? (Herramientas de creación de niveles, scripting system).

Mundo del juego.  
	  
	Descripción del mundo en el que ocurre el juego.  
	Descripción general de los niveles.  
Descripción de cómo se presentan los niveles al jugador.  
	¿Cómo navega el jugador entre niveles?

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

* Descripción: Una habitación dentro de una casa. El nivel no tiene obstáculos para que el jugador se familiarice con las mecánicas del juego. En el centro se encuentra el portal para recargar el tanque.
* Objetivo: Alcanzar al menos el 80% de suciedad en el suelo antes de que finalice el tiempo.
* Recompensa del nivel: Desbloqueo nivel 2.
* Descripción del gameplay del nivel: El jugador mueve al personaje por todo el escenario mediante las flechas del teclado, cubriéndolo con la tecla espacio hasta que se acaban las 100 unidades. Si esto ocurre, se debe recargar el tanque en el centro del escenario (en un portal) para continuar.
* Enemigos encontrados: 1 Limpiador Novato (se desplaza a velocidad lenta).
* HUD del nivel. Igual en todos los niveles. En la esquina superior derecha se muestra el tiempo restante. En la parte superior de la pantalla, en el centro, el porcentaje del escenario cubierto. El personaje principal tiene un tanque que muestra la cantidad de unidades restantes.
* Mecánicas específicas: No hay mecánicas específicas por nivel. Las mecánicas son las mismas en los 3 niveles.
  * Tiempo: 120 segundos (02:00 minutos).
  * Daño / Efectos: El contacto con la linterna o el limpiador provoca un inmovilidad del personaje durante 3 segundos.

Nivel 2. Intermedio.

* Descripción: Un jardín trasero de una casa. En el centro se encuentra el portal para recargar el tanque. El nivel no cuenta con obstáculos fuera del enemigo principal: el limpiador.
* Objetivo: Alcanzar al menos el 80% de suciedad en el suelo antes de que finalice el tiempo.
* Recompensa del nivel: Desbloqueo nivel 3.
* Descripción del gameplay del nivel: El jugador mueve al personaje por todo el escenario mediante las flechas del teclado, cubriéndolo con la tecla espacio hasta que se acaban las 100 unidades. Si esto ocurre, se debe recargar el tanque en el centro del escenario (en un portal) para continuar.
* Enemigos encontrados: 1 Limpiador (se desplaza a velocidad moderada).
* HUD del nivel. Igual en todos los niveles. En la esquina superior derecha se muestra el tiempo restante. En la parte superior de la pantalla, en el centro, el porcentaje del escenario cubierto. El personaje principal tiene un tanque que muestra la cantidad de unidades restantes.
* Mecánicas específicas:  No hay mecánicas específicas por nivel. Las mecánicas son las mismas en los 3 niveles.
  * Tiempo: 120 segundos (02:00 minutos).
  * Daño / Efectos: El contacto con la linterna o el limpiador provoca un inmovilidad del personaje durante 3 segundos.

Nivel 3.

* Descripción: Nivel final. El vecindario. En el centro se encuentra el portal para recargar el tanque. El nivel no cuenta con obstáculos fuera del enemigo principal: el limpiador.
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

Identificación de influencias y referencias relevantes.  
	Juegos similares  
	Elementos 
