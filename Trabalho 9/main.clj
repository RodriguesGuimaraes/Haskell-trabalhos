;Gustavo Rodrigues Guimarães

;1. Utilizando  a  linguagem  Clojure,  crie  uma  função  chamada  ultimo  que  receba  
;uma  lista  e devolva o último elemento desta lista sem usar as funções já prontas e disponíveis para esta 
;mesma finalidade na linguagem Clojure.  

(defn ultimo [lst] 
    first (last lst))

(println "ultimo: entrada: [1 2 3] ; resultado: " (ultimo [1 2 3]))
(println "ultimo: entrada: [3 2 1] ; resultado: " (ultimo [3 2 1]))

;2. Utilizando a linguagem Clojure, crie uma função chamada penultimo que receba uma lista 
;e  devolva  o  penúltimo  elemento  desta  lista  usar as  funções  já  prontas  e disponíveis para 
;esta mesma finalidade na linguagem Clojure.  

(defn penultimo [lst] 
    (first(rest (reverse lst))))

(println "penultimo: entrada: [1 2 3]; resultado: " (penultimo [1 2 3]))
(println "penultimo: entrada: [3 2 1]; resultado: " (penultimo [3 2 1]))
;3. Utilizando a linguagem Clojure, crie uma função chamada elementoN que receba uma lista 
;e um inteiro N e devolva o  elemento que  está na  posição N desta lista usar as funções já 
;prontas e disponíveis para esta mesma finalidade na linguagem Clojure. 

(defn elementoN [lst n] 
    (nth lst  n))

(println "elementoN: entrada: [1 2 3] 2; resultado: " (elementoN [1 2 3] 2))
(println "elementoN: entrada: [1 2 3] 0; resultado: " (elementoN [1 2 3] 0))

;4. Utilizando  a  linguagem Clojure,  crie  uma função  chamada  inverso  que  receba uma  lista  e 
;devolva esta lista com as posições dos elementos invertidas. Por exemplo recebe [1,2,3] e 
;devolve [3,2,1]. Sem usar as funções já prontas e disponíveis para esta mesma finalidade na 
;linguagem Clojure.
(defn inverso [lista]
    (if (empty? lista)
        []
        (conj (inverso (rest lista)) (first lista) )))

(println "inverso: entrada:1 2 3; resultado: " (inverso '(1 2 3)))
(println "inverso: entrada:4 5 3; resultado: " (inverso '(4 5 3)))
;5. Utilizando a  linguagem Clojure, crie uma função chamada  mdc que receba  dois inteiros e 
;devolve o mínimo divisor comum entre eles.  Sem usar as funções já prontas e disponíveis 
;para esta mesma finalidade na linguagem Clojure.  

(defn mdc [valor1 valor2 ]
    (if (== valor2 0)
        valor1
        (recur valor2 (rem valor1 valor2)) ))

(println "mdc: entrada: 5 5; resultado: " (mdc 5 5))
(println "mdc: entrada: 2 8; resultado: " (mdc 2 8))
