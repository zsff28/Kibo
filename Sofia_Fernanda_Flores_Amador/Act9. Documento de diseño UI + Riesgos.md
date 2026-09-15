### ¿Cómo interactúa el jugador con el sistema y qué información recibe?



#### HUD, canales de información y Feedback.



En este juego, el personaje principal no tiene una vida como tal que vaya bajando, pero si es importante incluir algunos datos en el HUD para informar al jugador, sobre todo, cuántas vidas le quedan antes de perder la partida.. Al iniciar una ronda de ahorcado se muestra al NPC seleccionado para la ronda y una pantalla con el dibujo clásico de un muñeco de ahorcado. Si el jugador escoge una letra que no está en la palabra, se dibuja una parte del muñeco y se marca una calavera en la esquina inferior derecha (aparecerán 6 calaveras desde el principio solo que grises u opacas, visibles pero no llamativas, y se irán marcando o pintando para mostrarle al jugador su "vida" o intentos restantes antes de perder la partida); al llegar a 6 se pierde la partida. Si la letra es correcta, se coloca la letra en los espacios en blanco de la palabra donde vaya dicha letra (retroalimentación, en este caso, positiva) y no se marca ninguna calavera. Otro punto importante del HUD es que, en la esquina superior derecha, se muestra el número de ronda actual.



En cuanto a los canales de información, el más importante, el que explica las reglas, es el secuestrador. Al inicio del juego, este NPC le explica al jugador lo que harán (jugar ahorcado), las vidas que tendrá y cómo funcionarán el juego y las rondas, como que tiene que seleccionar a un NPC al inicio de la ronda, que jugarán 5 rondas siendo la primera el tutorial o las reglas básicas del ahorcado. Otro canal de información importante será la cantidad de vidas por ronda que le quedan al jugador, siempre presente en el HUD. Finalmente, también se mostrará como la persona o NPC seleccionada es "ahorcada", modificando los gestos en su rostro. Para mayor tensión psicológica se incluye una animación de vela derritiéndose, un acompañamiento a las vidas restantes (se derrite un poco más conforme se pierden vidas pero, el mayor indicador de las vidas son las calaveras, esto solo es para aumentar la tensión psicológica). Cuando las vidas se acaban, la vela se apaga; después el NPC ya no aparece, indicando que ha sido ahorcado. 





El feedback recibido por el jugador será:



Si el usuario selecciona una letra incorrecta, aparece una calavera en la esquina inferior derecha y se agrega una parte al muñeco del ahorcado, informándole al jugador que su decisión fue incorrecta y le queda una vida menos (iluminándose o marcándose con intensidad una de las 6 calaveras restantes). Si el usuario selecciona la letra correcta, esta aparece en la palabra, llenando los espacios en blanco correspondientes. Otro feedback a destacar es que, cuando el jugador seleccione al inicio de la partida un NPC para "jugar" o "apostar" por su vida en esa ronda, la pantalla se mostrará temporalmente en negro (una pequeña pantalla de carga) y luego comenzará la ronda, mostrándose el NPC seleccionado. Esto, junto con una pequeña intervención del secuestrador, se muestra para informar al jugador que su elección fue recibida y aceptada, dandole, además, libertad al usuario para seleccionar al NPC por ronda.  



#### Loop principal de interacción



El loop principal del juego radica en 4 puntos principales



Inicio ronda. Se selecciona una persona y se muestran los espacios en blanco de la palabra. El NPC del secuestrador le informa al jugador el número de letras, le da una frase a modo de pista y le recuerda el número de vidas que tiene.



Elección. El jugador selecciona una letra, analizando las posibles palabras con ese número de letras y relacionadas a la frase.



Feedback. En la pantalla se muestra una calavera en caso de no haber acertado con la letra o se llenan los espacios donde dicha letra va en la palabra, informándole al usuario si adivinó o si perdió una vida.



Evaluación y reinicio. El jugador analiza las nuevas pistas (letras que completan la palabra) o replantea sus opciones (en caso de haber fallado, volviendo a considerar las pistas anteriores). 



Después de esto vuelve a seleccionar una letra. 



Es importante aclarar que, adivine o no la palabra el jugador, se pasa a la siguiente ronda. La ronda termina cuando se adivina la palabra o cuando se acaban las vidas. Se podría considerar esto, entonces, como otro loop, seleccionando un NPC, empezando la ronda, terminando y volviendo a elegir un NPC. 



El loop principal, entonces, quedaría resumido como:



Inicio y presentación de reglas -> Elección de letra -> Feedback, ¿letra correcta? -> Evaluación de pistas -> Regreso a Elección de letra.



#### Dinámicas asociadas y cómo la UI las regula



La UI mostrará una pantalla y un espacio con el NPC por el que se juega la ronda. Todas las dinámicas planteadas en este juego parten de la tensión y ansiedad psicológica, por ello los NPC, con cada vida que el jugador pierde, muestran más signos de asfixia. Además, la vela y las calaveras son un recordatorio constante de que el "tiempo se agota", lo que aumenta la tensión. Esto también se asocia con otra dinámica importante: hacer dudar al jugador; entre menos vidas queden, menos oportunidades hay de errar, por lo que podría cuestionarse si la letra que seleccionará a continuación es realmente correcta, lo que aumenta mientras queden menos vidas.



### ¿Cuál es el mayor riesgo para el proyecto y cómo se validaría?



#### Principal riesgo del diseño (técnico o de experiencia)



Principalmente, considero que la temática, la cual puede ser incómoda para algunas personas. Esto puede medirse mediante estudios o encuestas para comprobar cuánta gente del rango de edad definido (adolescentes y adultos jóvenes) realmente estarían interesados en jugar un juego con esta temática. Otro riesgo podría ser que el juego depende mucho de emociones, tensión y, por ende, una muy buena ambientación y diseño visual. Para la ambientación de música o efectos de sonido se pueden descargar de internet, pero el diseño visual, algo que pensaba hacer "a medida" para el juego, es algo en lo que considero que me falta experiencia; no soy artista, no considero que sepa dibujar muy bien, y menos en el estilo pixel art que espero darle al juego, pero esto se puede solucionar utilizando algunas cosas que ya estén hechas y adaptándolas. Para validarlo, se puede probar con personas y entrevistándolas para recopilar si el diseño realmente logró ponerlos incómodos.



#### Un trade-off explícito



No se muestran como tal los controles. No se le dice al jugador todo el tiempo "Escoge una letra", sin embargo con esto se busca ganar inmersión en el juego, en la historia y en el ambiente. Tampoco se le explica al jugador que, la persona seleccionada, morirá al perder la ronda, esto se descubre hasta que le suceda al jugador; con esto también se gana una mayor tensión y shock, haciendo que el jugador observe lo que sucede, no explicándoselo textualmente, para aumentar el sentimiento de ansiedad, estrés e incertidumbre. Finalmente, para centrarse en el diseño visual y las reacciones de los NPC, no se pone un teclado en la pantalla (algunos juegos de inspiración sí incluyen un teclado en la pantalla ya que se juega "en una computadora", el jugador selecciona letras con el mouse), sacrificándose un poco quizás una interfaz más obvia por una ambientación tensa y de ansiedad. Todos los trade-off se centran en aumentar la experincia e inmersión, enfocándose en la ambientación.



Todas las decisiones se justifican con las elecciones anteriores de las dinámicas y mécanicas así como también con el perfil del jugador previamente definido. Además, en cada decisión se inluye una pequeña justificación de porqué se decidió incluir o hacer eso.





