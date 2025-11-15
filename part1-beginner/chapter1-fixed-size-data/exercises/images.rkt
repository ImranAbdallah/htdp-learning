;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname images) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
; we can create simple images from scratch by instructing Dr.Racket
(circle 10 "solid" "red")
(rectangle 30 20 "outline" "blue")
; bsl also has operations for combining images in the same way that it has operations for adding numbers or appending strings
(overlay (circle 5 "solid" "red")
         (rectangle 20 20 "solid" "blue"))
; in the reverse order produces a solid blue square
(overlay (rectangle 20 20 "solid" "blue")
         (circle 5 "solid" "red"))
; here is another illustration to show another idea that doesnt draw but rather just measures
(image-width (square 10 "solid" "red"))
(image-width
 (overlay (rectangle 20 20 "solid" "blue")
          (circle 5 "solid" "red")))
; another operations include- empty-scene and place-image
(place-image (circle 5 "solid" "green")
             50 80
             (empty-scene 100 100))
(expt 2 3)
(<= -1 0)
(string=? "design" "tinker")
(string=? "tinker" "design")
(string>? "amy" "zack")
(string? "hello world")
(expt 4 5)