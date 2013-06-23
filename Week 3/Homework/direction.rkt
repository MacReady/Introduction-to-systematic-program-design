;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname direction) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; direction-starter.rkt

; 
; PROBLEM:
; 
; Given the data definition below, design a function named left
; that consumes a compass direction and produces the direction 
; that results from making a 90 degree left turn.
; 


;; =================
;; Data definitions:

;; Direction is one of:
;;  - "N"
;;  - "S"
;;  - "E"
;;  - "W"
;; interp. a direction that a player can be facing
;; <examples are redundant for enumerations>
#;
(define (fn-for-direction d)
  (cond [(string=? d "N") (...)]
        [(string=? d "S") (...)]
        [(string=? d "E") (...)]
        [(string=? d "W") (...)]))

;; Template rules used:
;; - one of: 4 cases
;; - atomic distinct: "N"
;; - atomic distinct: "S"
;; - atomic distinct: "E"
;; - atomic distinct: "W"


;; =================
;; Functions:

;; Direction -> Direction
;; produce new direction when you turn left 90 degress from original direction
(check-expect (left-turn "N") "W")
(check-expect (left-turn "S") "E")
(check-expect (left-turn "E") "N")
(check-expect (left-turn "W") "S")

;(define (left-turn d) "W") ;stub

;<use template from Direction

(define (left-turn d )
  (cond [(string=? d "N") "W"]
        [(string=? d "S") "E"]
        [(string=? d "E") "N"]
        [(string=? d "W") "S"]))
        