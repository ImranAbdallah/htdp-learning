;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Untitled) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
#| Exercise 3: Insert underscore at position i
  
  Strategy:
  1. Get substring from start to position i
  2. Get substring from position i to end  
  3. Append: part1 + "_" + part2
  
  Visualization:
  "helloworld" with i=5
  "hello" + "_" + "world" = "hello_world"
|#

(define str "helloworld")
(define ind "0123456789")
(define i 5)
(substring str 0 i)
(substring str i)
(string-append (substring str 0 i) "_" (substring str i))

#| execise 4: use the same setup as exercise 3 to create an expression that deletes the ith
position from str.
  1. which values for i are legitimate?
  2. ex.3 helloworld is the original string
  3. we need to delete in order to get helloorld
  4. delete the ith position from strn where b = 5
|#
(define strn "helloworld")
(define indn "0123456789")
(define b 5)
(string-append
 (substring strn 0 i)
 (substring strn (+ i 1)))
