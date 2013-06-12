;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname less-than-five) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; less-than-five-starter.rkt

; 
; PROBLEM:
; 
; DESIGN function that consumes a string 
; and determines whether its length is less than 5.
; 
; Remember, when we say DESIGN, we mean follow the recipe.
; 
; Your complete design should include signature, purpose, 
; commented out stub, examples/tests, commented out template,
; and the completed function definition.
; 

; String -> Bool
; Consumes a string and produces a true answer if less then 5
(check-expect (count? "hello") false )
(check-expect (count? "Tea") true )

;(define (count? s) ;stub
;  true)
;(define (count? s)     ;template
;  (... s))

(define (count? s)     
  (< (string-length s) 5))
     
