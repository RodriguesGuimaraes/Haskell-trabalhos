;Gustavo Rodrigues Guimarães

;1. Na  aula  disponível  em:  ;https://replit.com/@frankalcantara/ClojureAula2?v=1  foram 
;destacadas diversas funções (expressões), como funções de primeira ordem, ;disponíveis em 
;Clojure.  Sua  primeira  tarefa  será  descrever  cada  uma  destas  ;funções  e  apresentar  dois 
;exemplos  de  uso  de  cada  uma  delas.  Lembre-se  os  exemplos  ;precisam  ser  utilizados  de 
;forma que o resutado da função possa ser visto no terminal.   


;                                                  ->
; Threading First
; Uma forma de chamar funções em clojure de maneira sequencial, tal que o resultado da primeira vai como PRIMEIRO parametro para a próxima
; e assim segue.
 
(println "-> (-> 3(* 2)(- 6)) = " (-> 3(* 2)(- 6))) ; 0
(println "-> (-> 3(* 2)(- 4)(/ 2)(+ 1) = " 
(-> 3
  (* 2)
  (- 4)
  (/ 2)
  (+ 1))
);2
; ((((2*3) - 4) / 2) +1) = 2


;                                                  ->>
;Trheading Last
;Quase a mesma coisa do ->, 
;Uma forma de chamar funções em clojure de maneira sequencial, tal que o resultado da primeira vai como SEGUNDO parametro para a próxima
(println "->> (-> 3(* 2)(- 6)) = " (->> 3(* 2)(- 6))) ; 0
(println "->> (-> 3(* 2)(- 4)(/ 2)(+ 1) = " 
(->> 3
  (* 2)
  (- 4)
  (/ 2)
  (+ 1))
)
; o que ocorre:
; 1 + (2 / (4 -( 2 * 3)))


;                                                 use
; Não consegui achar muita coisa, mas o que achei é que, o used ele realiza a importação das bibliotecas atualmente não existentes e não  necessida de namespace adequado, alem de possuir outras funções que o require não possui, tal como : :exclude
; é usado para importar bibliotecas e usar-las como um nome

(use '[clojure.string :exclude [replace reverse]])
(println (split "hello world" #" "))
;(println (replace "hello world" #"[ ]" ""))   ; deixei comentado pois ia dar erro, mas PROPOSITAL

(use '[clojure.set :only (intersection ) ])
(println (intersection #{1 2 3} #{2 4 5})) 
;(println (difference #{1 2 3} #{2 4 5}))   ; deixei comentado pois ia dar erro, mas PROPOSITAL


;                                                    require
; Não consegui achar muita coisa, mas o que achei é que, o require ele realiza a importação das bibliotecas atualmente não existentes, contudo necessida de namespace adequado (normalmente não recomendado o uso)
; exemplo: 
(require '[clojure.string :as str] )
(println (str/split "hello world" #"[ ]")) ;se retirar o str vai funcionar por causa do use!

; Note: mesmo já fazendo o require tive que mencionar o caminho a percorrer para pegar essa função

(require '[clojure.set :as st])
(println (st/union #{1 2 3} #{2 4 5})) 


;------------------------------------------------------------------

;2. Utilizando a linguagem Clojure, crie uma função chamada ehPrimo que ;receba um inteiro e devolva True caso este inteiro seja verdadeiro e False caso contrário.  
(defn divisores_possiveis ;função auxiliar
    [n]
    (loop [i 1
           divisors []]
      (if (<= i n)
        (if (zero? (mod n i))
          (recur (+ i 1) (conj divisors i))
          (recur (+ i 1) divisors))
        divisors
      )
    )
)

(defn ehPrimo
    [n]
    (if (> n 0)
        (if (or(= (count (divisores_possiveis n)) 2) (= n 1))
            true
            false)
    false) ; caso de valores invalidos
)


(println "ehPrimo: entrada:  7 ; resultado:  "(ehPrimo 7))
(println "ehPrimo: entrada:  8 ; resultado:  "(ehPrimo 8))

;3. Utilizando  a  linguagem  Clojure,  crie  uma  função  chamada fatoresPrimos  que  receba  um inteiro e devolva uma lista dos seus fatores primos. Decomposição em fatores primos é uma tarefa fundamental da aritmética.  

(defn fatoresPrimos
    [n]
    (loop [i 2
           fatores []]
      (if (<= i n)
        (if (and (ehPrimo i) (zero? (mod n i))) ; mais performatico que contains? (todosDivisores n) i
          (recur (+ i 1) (conj fatores i))
          (recur (+ i 1) fatores))
        fatores)))

(println "fatoresPrimos: entrada:  24 ; resultado:  "(fatoresPrimos 24))
(println "fatoresPrimos: entrada:  50 ; resultado:  "(fatoresPrimos 50))

;4. Utilizando  a  linguagem  Clojure,  crie  uma  função  chamada  ;todosPrimos  que  receba  dois 
;valores inteiros e devolve todos os números primos que existam entre estes ;dois valores. 

(defn todosPrimos 
  [minimo maximo]
  (loop [
         i minimo
         resultados []]
    (if(<= i maximo)
      (if (ehPrimo i)
        (recur (inc i) (conj resultados i))
        (recur (inc i) resultados)
      )
     resultados)
  )
)

(println "todosPrimos: entrada:  0 10 ; resultado: "(todosPrimos 0 10))
(println "todosPrimos: entrada:  40 50 ; resultado: "(todosPrimos 40 50))