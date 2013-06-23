;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname dinner) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; dinner-starter.rkt

;; =================
;; Data definitions:

; 
; PROBLEM A:
; 
; You are working on a system that will automate delivery for 
; YesItCanFly! airlines catering service. 
; There are two dinner options for each passenger, chicken or pasta. 
; They can also choose not to order a meal, 
; which the system records as false. 
; Design a data definition to represent a dinner order. 
; Call the type DinnerOrder.
; 

;;DinnerOrder is one of:
;; - "chicken"
;; - "pasta"
;; - "no meal order"
;; interp. the type of meal ordered

;;<examples are redundant for enumerations>

#;
(define (fn-for-dinner-order do)
  (cond [(string? "chicken" do) (...)]
        [(string? "pasta" do) (...)]
        [(string? "no meal order") (...)]))

;; Template rules used:
;; - one of: 3 cases
;; - atomic distinct: "chicken"
;; - atomic distinct: "pasta"
;; - atomic distinct: "no meal order"
;; =================
;; Functions:

; 
; PROBLEM B:
; 
; Design the function dinner-order-to-msg that consumes a dinner order 
; and produces a message for the flight attendants saying
; what the passenger ordered. 
; For example, calling dinner-order-to-msg for a chicken dinner 
; would produce "The passenger ordered chicken."
; 

;; String -> String
;; produces messge depending on what is ordered
(check-expect (dinner-order-to-msg "chicken") "winner winner chicken dinner")
(check-expect(dinner-order-to-msg "pasta") "pasta pronto")
(check-expect (dinner-order-to-msg "no meal order") "no soup for you")

;(define (dinner-order-to-msg s) "") ;stub

;<use template from DinnerOrder>

(define (dinner-order-to-msg s)
  (cond [(string=? s "chicken") "winner winner chicken dinner"]
        [(string=? s "pasta") "pasta pronto"]
        [(string=? s "no meal order") "no soup for you"]))



