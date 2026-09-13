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
  `Pantalla de Inicio` ➔ `Selección de Nivel` ➔ `Gameplay (2 min)` ➔ ¿100% Suciedad? 
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
