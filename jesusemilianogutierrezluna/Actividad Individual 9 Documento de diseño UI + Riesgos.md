# Documento de Diseño UI y Riesgos: Sloppy Spectre

---

## 1. Concepto de UI (HUD, Canales de Información y Feedback)

En *Sloppy Spectre*, Spooky no cuenta con una barra de vida (HP) tradicional al no sufrir daño físico; en su lugar, la UI se enfoca en comunicar constantemente el **tiempo límite** y el **estado del tanque de ectoplasma**.

### Elementos del HUD
* **Barra de Suciedad Global (Progreso):** Ubicada en la parte superior central (0% a 100%). Incluye una marca visual clara en el **80%**, que indica la condición mínima para ganar la ronda.
* **Tanque de Ectoplasma (Recurso):** Frasco en la esquina inferior izquierda que muestra las unidades disponibles (0 a 100). Su nivel baja visualmente al rociar ectoplasma.
* **Timer (Tiempo Límite):** Reloj en la esquina superior derecha con cuenta regresiva desde `02:00`.

### Canales de Información
* **Reglas e Inicio:** Un banner temporal al arrancar el nivel indica: *"¡Alcanza el 80% de suciedad antes de que el tiempo se agote!"*, seguido de un conteo de 3 segundos.
* **Cono de Luz de la Linterna:** Funciona como un indicador contextual en el propio mundo (*diegético*). Cambia de amarillo a rojo cuando la IA del Limpiador entra en modo de búsqueda directa o persecución.
* **Indicador de Portal Espiritual:** Un brillo azul/morado constante marca el centro del mapa. Si el tanque llega a 0, un icono flotante sobre Spooky apunta hacia el portal para indicar que debe recargar.

### Feedback Recibido por el Jugador
* **Feedback Positivo (Ensuciar):** Al mantener `ESPACIO`, el suelo se tiñe de verde fluorescente y la barra de suciedad incrementa.
* **Feedback Negativo (Aturdimiento):** Al ser alcanzado por la linterna o el Limpiador, la pantalla parpadea, Spooky queda inmovilizado con estrellas sobre su cabeza por 3 segundos (*Stun*) y suena un efecto de descarga eléctrica (*SFX*).
* **Feedback de Recarga:** Permanecer 1.5 segundos en el Portal Espiritual llena el frasco en el HUD con una animación de pulso y partículas.
* **Alerta de Tiempo:** A los 30 segundos restantes, el Timer cambia a rojo parpadeante y el tempo de la música se acelera.

---

## 2. Loop Principal de Interacción

1. **Input del Jugador:** Se mueve con las **flechas del teclado** y mantiene **`ESPACIO`** para rociar ectoplasma.
2. **Respuesta del Sistema:** Se restan unidades del tanque, el `TileMap` pinta el suelo de verde y sube la variable `Suciedad_Zona`. El Limpiador se desplaza a las manchas para limpiarlas.
3. **Cambio de Estado:** La Barra de Suciedad se actualiza en el HUD. Si el tanque llega a 0, el jugador no puede disparar hasta visitar el portal.
4. **Repetición y Tensión:** El ciclo se repite mientras el tiempo cae a `00:00`. La velocidad del Limpiador aumenta conforme la sala se ensucia más, elevando la presión.
5. **Cierre de Ronda:**
   * **Victoria:** Al alcanzar o superar el 80% de suciedad ($\ge 240$), el tiempo se detiene, Spooky festeja y se desbloquea el siguiente nivel.
   * **Derrota:** Si el tiempo llega a `00:00` sin alcanzar el 80% o la suciedad cae a 0%, se despliega la pantalla de *Game Over*.

---

## 3. Dinámicas Asociadas y cómo la UI las Regula

* **Tensión por Tiempo Limitado:** Regulada por el **Timer de 120s** y su alerta roja final, forzando al jugador a asumir mayores riesgos cerca del enemigo.
* **Gestión de Riesgo vs. Recompensa:** Regulada por el **Tanque de Ectoplasma**. Obliga a decidir entre seguir ensuciando zonas lejanas o atravesar el mapa hacia el centro para recargar antes de quedar indefenso.
* **Sensación de Dominio Territorial:** Regulada por la **Barra de Suciedad Global**, mostrando de forma transparente si la estrategia del jugador supera el ritmo de limpieza de la IA.

---

## 4. Principal Riesgo del Diseño y Validación

### Riesgo Técnico y de Experiencia
El mayor riesgo es el **rendimiento del cálculo de suciedad en tiempo real y la precisión del `TileMap`**. Evaluar miles de celdas por segundo en Godot 4 puede generar caídas de cuadros (*lag*). Además, si la barra del HUD no refleja fielmente lo que el jugador ve en el mapa, causará frustración.

### Plan de Validación con Prototipo
Se creará una escena de prueba con el mapa final (*Nivel 3: Calle*) actualizando la suciedad mediante señales por eventos en el `TileMap` (en lugar de evaluarlo en `_process`). Se validará mantener **60 FPS estables** y se realizarán pruebas con usuarios para comprobar que la barra del HUD coincida con su percepción visual.

---

## 5. Trade-off Explícito

* **Trade-off:** **Inmersión y Detalle de Cámara vs. Claridad Táctica de Pantalla Completa.**
* **Decisión:** Se sacrificó un acercamiento de cámara en los detalles del personaje a favor de una **cámara ortográfica 2D fija o de seguimiento amplio**.
* **Justificación:** Aunque se pierden detalles en los gestos de Spooky, se obtiene visión completa de las rutas del Limpiador y del Portal Espiritual, garantizando que el jugador no sufra derrotas injustas por falta de visibilidad.

---

## 6. Justificación de Decisiones

1. **Controles Directos (Flechas + Espacio):** Esquema simple e intuitivo diseñado para un perfil de jugador casual en partidas rápidas.
2. **Aturdimiento en Lugar de HP:** En lugar de reiniciar el nivel tras un golpe, inmovilizar a Spooky por 3 segundos ataca directamente el recurso central del juego: **el tiempo**.
3. **Marca Clara del 80% en la UI:** Muestra de forma transparente el objetivo de victoria sin obligar al jugador a calcular porcentajes en medio de la acción.