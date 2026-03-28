# TC_2037_AnalisisLexico_Elven
El objetivo de este proyecto es hacer evidencia de lo aprendido en clase sobre autómatas y expresiones regulares en el análisis de lenguajes. Parte de la evidencia será analizar el léxico de un lenguaje utilizando ciertas palabaras como base para determinar si son parte del lenguaje o no. Este proyecto cubre el diseño e implementación de un autómata y una expresión regular para cumplir este objetivo, junto con pruebas para demostrar su correcta implementación, un reporte sobre lo desarrollado junto a argumentación citada y un análisis de complejidad del proyecto.

## -------------------- Lenguaje seleccionado --------------------

Para el proyecto se implementaron 5 palabras del léxico Elven, siendo las siguientes: 

1. Cormarë - Palabra Quenya que siginifca 'Día de anillo'. El nacimiento de Frodo y   y Bilbo Baggins.
2. Coron - mound.
3. Craban - Palabra sindari que hace referencia a una especie poco amistosa de cuervos negros.
4. Cú - Arco.
5. Cuivie - Despertar.

## -------------------- Autómata implentado -------------------- 
Para el proyecto se decidio implementar un Autómata Finito Determinista (DFA). El cual se caracterísa por tener un número finito de estados a los cuales el autómata se puede mover, este se navega de la siguiente forma:
- Se ingresa un string al autómata.
- El autómata toma el string y lo divide en caracteres.
- Navega caracter por caracter moviendose entre estados.
- Si llega al estado final el string es correcto, si no llega al estado final el string es rechazado.

Para profundizar mejor en el autómata implementado se va a definir el diccionario o los objetos del DFA:
- Q (Conjunto de estados) - Siendo estos (s,q0,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,qf).
- Σ (alfabeto) - Conjunto de caracteres únicos aceptados (c,o,r,m,a,ë,n,b,ú,u,i,v,e).
- $\delta$ (función de transición) - Función que define un estado base, estado al que se mueve, y caractér necesario para hacer el movimiento, definido en este proyecto como: $\delta$ transition(estado origen, estado destino, caractér necesario).
- q0 (Estado inicial) - Definida por el estado s, en el automata se ve como: start(s).
- F (Estado aceptado) - Definida por el estado qf, de forma que si la transición termina en (qn, qf, caractér) es tomado como palabra válida.

## -------------------- Argumentación Autómata -------------------- 
Según Aho et al. (2008) en Compilers: Principles, Techniques, and Tools, un Autómata Finito Determinista (DFA) es una herramienta ideal para el análisis léxico ya que permite reconocer patrones de manera eficiente. Mi implementación en Prolog cumple con la propiedad fundamental de un DFA: la **determinación**.

Para cualquier estado $s$ y símbolo de entrada $a$, existe a lo sumo una transición, lo que evita el backtracking innecesario durante el escaneo de la palabra. El predicado parse_list/2 implementa esta lógica mediante recursión de cola, lo que garantiza que el análisis de una palabra de longitud $n$ se realice en un tiempo lineal $O(n)$.