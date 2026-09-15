# **Actividad 9\. Documento de diseño UI \+ Riesgos**

Juego: Ghost Cleaner

**Concepto de UI (HUD, canales de información y feedback)**

El diseño de interfaz para *Ghost Cleaner* tiene como objetivo eliminar la sobrecarga cognitiva y permitir la supervisión simultánea del entorno cenital, esto está justificado en el estudio de Dobrowolski et al., 2015\. Se divide en elementos no diegéticos (HUD estático) y diagéticos/espaciales (en el entorno de juego):

HUD:

- Barra de suciedad de la habitación (superior al centro): Barra horizontal roja que avanza del 0% al 100%, indicando cuánta suciedad hay en la sala y qué tan cerca está la derrota.   
- Temporizador de ronda (esquina superior derecha): Cuenta regresiva digital con formato MM:SS el cual inicia en 02:00, con el objetivo de determinar la supervivencia de la partida.

UI Espacial y Feedback Diagético (Interacción en Pantalla):

- Medidor de capacidad del tanque (esquina superior izquierda: Barra rectangular el cual esta en color verde y cambia a amarillo cuando esta lleno.   
- Área cónica de succión: Cono de luz semitransparente frente al conserje que se activa al mantener pulsado SPACE, delimitando con claridad matemática el rango de captura de ectoplasma.  
- Barra de progreso de descarga bajo el contenedor central: Una barra de llenado que tarda exactamente 1.5 segundos en completarse cuando el avatar permanece inmóvil en el centro. Si el jugador se mueve antes, la barra se interrumpe y se reinicia.

Canales de Feedback Sensorial (Respuesta Inmediata):

- Visual: Manchas de ectoplasma que se reducen al ser succionadas y desaparecen del suelo al limpiarse.   
- Auditivo:   
1. Zumbido continuo del motor de aspiradora al mantener pulsado SPACE.   
2. Sonido de "pop" al terminar de aspirar cada porción de ectoplasma.   
3. Sonido de "clic seco" si se intenta aspirar con el tanque en 100 unidades.  
4. Sonido de descarga que concluye con un timbre claro "ding" tras cumplir los 1.5 s de vaciado.

### **Loop Principal de Interacción**

Siguiendo el principio de las 3 C de Scott Rogers: Cámara fija, personaje responsivo y controles simples, el bucle operativo se divide en 4 pasos:

1. Escanear: Mirar la pantalla completa para ver dónde brotan las manchas más grandes.  
2. Posicionarse: Moverse con WASD o flechas y apuntar de frente a la suciedad.  
3. Succionar: Mantener presionada la barra espaciadora para absorber el ectoplasma hasta llenar el tanque.  
4. Descargar: Correr al contenedor del centro y quedarse quieto 1.5 segundos para vaciarlo y volver a empezar.

### **Dinámicas asociadas y cómo la UI las regula** 

Las mecánicas simples dan paso a dinámicas emergentes que la UI regula en tiempo real:

- Codicia vs. Prudencia: Decidir si aspirar una mancha más o regresar a vaciar cuando el tanque va casi lleno.  
  Cómo lo regula la UI: La barra del tanque pasa de verde a amarillo al acercarse a 100 unidades, al llenarse, el cono se apaga y bloquea la succión, forzando a ir al centro.  
- Riesgo por inmovilidad: Quedarse quieto 1.5 segundos en el centro mientras la suciedad sigue brotando en las esquinas.  
  Cómo lo regula la UI: La barra bajo el contenedor muestra cuánto falta para terminar el vaciado, mientras la barra roja superior sigue subiendo, aumentando la prisa.  
- Priorización de rutas: Elegir qué manchas limpiar primero para no perder tiempo cruzando el cuarto.  
  Cómo lo regula la UI: La vista aérea y el piso despejado permiten ver al instante dónde hay más manchas para planear el recorrido (Dobrowolski et al.).

**Principal riesgo del diseño (técnico o de experiencia)** 

**Riesgo del Diseño:** Frustración por quedarse quieto y perder el ritmo.

**Explicación:** Obligar al jugador a pausarse 1.5 segundos en el centro para vaciar puede romper la fluidez del juego según Jesse Schell. En los últimos segundos, no poder moverse mientras la suciedad sube rápido puede sentirse como un castigo injusto en vez de un reto divertido.

**Validación con Prototipo:**

- Opción A: Quedarse totalmente quieto 1.5 segundos en el centro.  
- Opción B: Vaciar de forma continua mientras caminas despacio alrededor del contenedor.

Medir cuántas partidas se pierden vaciando el tanque y si los jugadores sienten la derrota como justa o injusta en las pruebas de juego.

**Trade-Off explícito** 

- Decisión: Usar una cámara fija aérea que muestra todo el cuarto, en lugar de una cámara cercana que siga al personaje.  
- Lo que se gana: Vista clara de todo el mapa sin puntos ciegos, facilitando planear rutas y reaccionar rápido a las manchas.  
- Lo que se sacrifica: Inmersión y detalles visuales más vistosos, ya que los personajes y manchas deben ser pequeños para caber completos en pantalla.

### **Justificación de Decisiones**

- Lente del estado dinámico y experiencia esencial (Jesse Schell): No hay información oculta, además, el tiempo, el tanque y la suciedad se ven en todo momento para que ganar o perder dependa solo de la habilidad del jugador, transmitiendo alivio y orden al limpiar.  
- Teoría del "Un-Fun" y tres C (Scott Rogers): Se quitan inventarios o vidas complejas que aburren y solo hay tres acciones básicas: moverse, aspirar y vaciar, haciendo que el juego se entienda al instante.  
- Atención dividida (Dobrowolski et al., 2015): Los indicadores claros y la vista aérea evitan saturar la vista, permitiendo vigilar varias manchas al mismo tiempo y planear rápido a dónde ir.  
  