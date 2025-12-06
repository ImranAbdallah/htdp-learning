;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname string) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))

; concatenate 2 or more strings into 1 using string-append (string-append is like +)
(string-append "what a " "lovely " "day" " 4 BSL")
; exercise 2
(define prefix "hello")
(define suffix "world")
; create an expression that concatenates prefix and suffix and adds "_" between them to make "hello_world"
(string-append prefix "_" suffix)
(+(string-length "hello world") 20)
(+ (string-length "42") 1)
(define str "helloworld")
(define ind "0123456789")
(define i 5)
(string-append str "_" i)