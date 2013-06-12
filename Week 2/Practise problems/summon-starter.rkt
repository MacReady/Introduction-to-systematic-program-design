;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname summon-starter) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; summon-starter.rkt

; 
; PROBLEM:
; 
; You might want to use a spell to summon items like a magician.
; DESIGN a function that generates summoning charms with a magician's
; enthusiasm. For example:
; 
;    (summon "Firebolt") should produce "summon Firebolt!"
;    (summon "portkey") should produce "summon portkey!"
;    (summon "broom") should produce "summon broom!"
; 
; Remember, when we say DESIGN, we mean follow the recipe.
; 
; Your complete design should include signature, purpose, 
; commented out stub, examples/tests, commented out template,
; and the completed function definition.
; 

;; String -> String
;; adds an exclamtion point to the end of a s
(check-expect (summon "Dragon") "summon Dragon!")
(check-expect (summon "weasel") "summon weasel!")              
;;(define (summon s) "") ;stub

;;(define (summon s)     ;template
;;  (... s))

(define (summon s)
  (... s))