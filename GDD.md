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

Tabla de contenido  
Game Goals

Historia del juego

	¿Cómo el jugador comienza el juego? 
	
	¿Cómo el jugador se mueve de un lugar a otro? 
	
	¿Cómo termina?

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

	Descripción de la experiencia de juego  
Cómo ganar  
	Cómo perder  
	Número de rondas  
Pantalla de inicio. Opciones disponibles para el jugador, detalles de archivo de guardado, opciones que el jugador puede cambiar (configuraciones)  
Game Flowchart. ¿Cómo se conecta la pantalla de inicio con Game over?  
Descripción del entorno.

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

Lista detallada de niveles.   
Descripción de cada nivel  
Objetivo.  
Recompensa del nivel.  
Descripción del gameplay del nivel.  
Enemigos encontrados en el nivel  
Arte conceptual.  
Música.  
Hub del nivel  
Mecánicas específicas del nivel (tiempo, daño, qué afecta al jugador?

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
