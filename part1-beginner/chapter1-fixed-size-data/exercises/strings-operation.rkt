;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname strings-operation) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
#|
EXERCISE 1: Basic substring practice
====================================
Task: Extract "gram" from "programming"

Visualization:
  p r o g r a m m i n g
  0 1 2 3 4 5 6 7 8 9 10
        ^-------^
      start=3, end=7

Expected result: "gram"
|#
(define example-str "programming")
(define exp-result (substring example-str 3 7))
 exp-result; Your code here:
; Use substring to get "gram" from example-str
; Remember: (substring string start end)

#|
EXERCISE 2: Insertion Pattern Practice  
======================================
Task: Create "ele_phant" by inserting "_" at position 3

Visualization:
  e l e p h a n t
  0 1 2 3 4 5 6 7
        ^
      position 3 = "p"

Strategy:
  1. Get everything before position 3 → "ele"
  2. Get everything from position 3 to end → "phant"
  3. Combine: "ele" + "_" + "phant"
|#
(define word "elephant")
(string-append
 (substring word 0 3)
 "_"
 (substring word 3))

#|
EXERCISE 3: Deletion Pattern Practice
=====================================
Task: Remove "york" from "newyorkcity"

Visualization:
  n e w y o r k c i t y
  0 1 2 3 4 5 6 7 8 9 10
        ^-------^
      Remove positions 3-7 ("york")

Strategy:
  1. Keep "new" (positions 0-3)
  2. Skip "york" (positions 3-7)
  3. Keep "city" (positions 7 to end)
|#
(define cities "newyorkcity")
(string-append
 (substring cities 0 3)
 (substring cities 7))
; Use string-append with two substrings
; Remember: Skip the part you want to delete!

#|
EXERCISE 4: Your Turn - Fill in the Blanks
==========================================
Task: Change "learningracket" to "learning_racket"

Hints:
1. The underscore should go between "learning" and "racket"
2. "learning" has 8 letters
3. "racket" starts after "learning"

Count carefully!
  l e a r n i n g r a c k e t
  0 1 2 3 4 5 6 7 8 9 10 11 12 13
|#
(define phrase "learningracket")

(define ex4-result
  (string-append
    (substring phrase 0 8)   ; Fill in! Get "learning"
    "_"
    (substring phrase 8)))   ; Fill in! Get "racket"

; Uncomment to test:
ex4-result

#|
EXERCISE 5: Edge Cases Practice
===============================
Task: Test boundary conditions

Try these in the interactions area (one at a time):

1. (substring "hi" 0 3)   ; What happens? ; I got an error substring ending index out of range
2. (substring "hi" 2)     ; What does this return? ; I got " "
3. (substring "hi" 1 1)   ; What does this return? ; I got same " "

Important Question: 
What are valid positions for a string of length n? ; = 3
|#
; No code needed here - just type in interactions area

#|
CHALLENGE EXERCISE: Multiple Operations
========================================
Task: Transform "functionaltraining" into "fun_training"

Break it down:
1. What part do we want to keep? "fun" (positions 0 3___)
2. What part do we want to remove? "ctional" 
3. What part do we want to keep? "training" 
4. Insert "_" between the kept parts

Visualization:
  f u n c t i o n a l t r a i n i n g
  0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
|#
(define challenge "functionaltraining")
(define challenge-result
  (string-append
   (substring challenge 0 3)
   "_"
   (substring challenge 10)))
 challenge-result ; Your solution here:
; (define challenge-result ...)