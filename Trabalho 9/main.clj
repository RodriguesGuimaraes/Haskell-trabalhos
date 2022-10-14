;Gustavo Rodrigues Guimarães

;1. Utilizando  a  linguagem  Clojure,  crie  uma  função  chamada  ultimo  que  receba  
;uma  lista  e devolva o último elemento desta lista sem usar as funções já prontas e disponíveis para esta 
;mesma finalidade na linguagem Clojure.  

(defn ultimo [lst] 
    first (last lst))

(println(ultimo [1 2 3]))

;2. Utilizando a linguagem Clojure, crie uma função chamada penultimo que receba uma lista 
;e  devolva  o  penúltimo  elemento  desta  lista  usar as  funções  já  prontas  e disponíveis para 
;esta mesma finalidade na linguagem Clojure.  

(defn penultimo [lst] 
    (first(rest (reverse lst))))

(println(penultimo [1 2 3]))

;3. Utilizando a linguagem Clojure, crie uma função chamada elementoN que receba uma lista 
;e um inteiro N e devolva o  elemento que  está na  posição N desta lista usar as funções já 
;prontas e disponíveis para esta mesma finalidade na linguagem Clojure. 

(defn elementoN [lst n] 
    (nth lst  n))

(println(elementoN [1 2 3] 2))


;4. Utilizando  a  linguagem Clojure,  crie  uma função  chamada  inverso  que  receba uma  lista  e 
;devolva esta lista com as posições dos elementos invertidas. Por exemplo recebe [1,2,3] e 
;devolve [3,2,1]. Sem usar as funções já prontas e disponíveis para esta mesma finalidade na 
;linguagem Clojure.
(defn inverso [lista]
    (if (empty? lista)
        []
        (conj (inverso (rest lista)) (first lista) )))

(println(inverso '(1 2 3)))
;5. Utilizando a  linguagem Clojure, crie uma função chamada  mdc que receba  dois inteiros e 
;devolve o mínimo divisor comum entre eles.  Sem usar as funções já prontas e disponíveis 
;para esta mesma finalidade na linguagem Clojure.  

(defn mdc [valor1 valor2 ]
    (if (== valor2 0)
        valor1
        (recur valor2 (rem valor1 valor2)) ))

(println (mdc 5 5))