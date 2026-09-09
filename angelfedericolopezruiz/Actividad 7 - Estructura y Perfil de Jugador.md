### **Perfil de Jugador**

Schell propone diferentes divisiones a la demográfica de jugadores, ya sea según la edad, género o alguna distinción específica de la audiencia. 

**Tipo de Jugador:**  Schell menciona la taxonomía de los tipos de jugadores según Bartle, que divide a los jugadores en varias categorías, una de ellas siendo el jugador “Killer”. Estos encuentran diversión en la competición y venciendo a otros. Disfrutan de superar intelectualmente al rival más que de explorar mundos o acumular objetos.

**Plataforma objetivo:** PC. El esquema de controles basado en WASD para movimiento y el uso del ratón para direccionar la visión.

**Tipo de sesiones:** Micro-sesiones de muy corta duración (1 a 3 minutos por ronda) que se acumulan en sesiones largas. Como señala Scott Rogers con su filosofía de "*Pick up and play*", el juego elimina la fricción de entrada: entrar a una partida y retar a una revancha es inmediato, lo que fomenta el efecto de "jugar solo una ronda más" durante horas.

**Nivel de experiencia:** Intermedio. Aunque los controles son mecánicamente sencillos y accesibles (el principio *K.I.S.S.* de Rogers), la carga cognitiva de jugar a ciegas con la niebla de guerra y la penalización severa por fallar el ataque exigen entendimiento espacial y táctico por parte del jugador. 

###  **Estructura del Videojuego**

Las características de este perfil influyen directamente en la arquitectura del juego para asegurar que se mantenga en el "Canal de Flujo"propuesto por Schell, donde el desafío siempre es proporcional a la habilidad:

* **El loop principal de juego:** El jugador competitivo busca recompensas inmediatas a su habilidad. Por ello, el bucle de "Votar mapa \> Acechar \> Asestar golpe \> Revancha" es extremadamente cerrado. Se elimina cualquier interrupción narrativa o pantallas de carga donde el jugador no hace nada. La gratificación de engañar al rival (o la frustración de caer en una trampa) lleva instantáneamente en la pantalla de votación y revancha, alimentando la motivación del jugador por demostrar superioridad.  
* **La estructura general:** Dado que es un juego de sesiones rápidas y competitivas, la estructura renuncia a mundos abiertos o progresión de estadísticas (nivel de personaje o equipo mejorado). La "progresión" es puramente la habilidad del jugador. En cuanto al diseño de los niveles, las arenas son cerradas y giran en torno a puntos de conflicto deliberados. La colocación de la zona de visión global y los escudos sobre zonas de ralentización actúan como imanes que atraen a los jugadores a encontrarse en el mapa; obligan a que los jugadores se enfrenten, evitando que el juego se estanque.  
* **El ritmo y dificultad:** La dificultad no está programada por el juego (IA o aumento de daño), sino que es dinámica y emergente, ya que proviene de la habilidad del oponente humano. Esto asegura una rejugabilidad infinita. El ritmo de las partidas se estructura en picos de "Tensión y Liberación": inicia con un ritmo lento y paranoico mientras los jugadores se buscan a través de la niebla de guerra, escala drásticamente cuando alguien activa un teletransportador o captura la visión, y culmina en un clímax cuando ambos se encuentran para asestar el único golpe letal.

