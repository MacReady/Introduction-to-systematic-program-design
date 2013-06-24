;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname breakfast) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; breakfast-starter.rkt

;; =================
;; Data definitions:

; 
; PROBLEM A:
; 
; You want to develop a system that will perfectly heat 
; your breakfast oatmeal every morning. 
; You are using an old stove, which can only heat oatmeal between 0°C and 20°C.
; Based on your breakfast preferences, the perfect temperature is exactly 10°C.
; 
; Design a data definition to represent the possible oatmeal temperatures. 
; Call it OatmealTemp.
; 

;; OatmealTemp is Integer[0, 20]
;; interp. the temperature of the oven in celsius.
(define OT1 0)  ;too cold
(define OT2 10) ;perfect temperature
(define OT3 20) ;too hot


(define (fn-for-OatmealTemp ot)
  (... ot))

;; Template rules used:
;; - atomic non-distinct: Integer[0, 20]

; 
; PROBLEM B:
; 
; You need the system to adjust your stove to ensure your oatmeal 
; is heated just right.
; If the stove is too hot, its knob should be turned to the left. 
; If it is too cold, the knob should be turned right. 
; And if it is at the perfect temperature, it should be left as is.
; 
; Design a data definition to represent the stove adjustment required.
; Call it Adjustment.
; 

;; Adjustment is one of:
;; - "Turn knob to the right"
;; - "Do not turn the knob"
;; - "Turn knob to the left"
;; interp. the direction to turn a knob on a cooker

;; <examples are redundant for enumerations>

#;
(define (fn-for-adjustment a)
  (cond [(string=? "Turn knob to the right" a) (...)]
        [(string=? "Do not turn the knob" a) (...)]
        [(string=? "Turn knob to the left" a)(...)]))
;; Template rules used:
;; - one of: 3 cases
;; - atomic distinct: "Turn knob to the right"
;; - atomic distinct: "Do not turn the knob"
;; - atomic distinct: "Turn knob to the left"

;; =================
;; Functions:

; 
; PROBLEM C:
; 
; Design a function that will determine the required stove adjustment
; based on the current oatmeal temperature. 
; Call it oatmeal-temp-to-adjustment.
; 

; Number -> String
; produce the required oven knob adustment based on the oatmeal temperature
(check-expect (oatmeal-temp-to-adjustment 1) "Turn knob to the right")
(check-expect (oatmeal-temp-to-adjustment 10) "Do not turn the knob")
(check-expect (oatmeal-temp-to-adjustment 18) "Turn knob to the left") 

;(define (oatmeal-temp-to-adjustment ot) "")  ;stub
;<use template from Adjustment

(define (oatmeal-temp-to-adjustment ot )
  (cond [(< 10 ot) "Turn knob to the right"]
        [(= 10 ot) "Do not turn the knob"]
        [(and (>= 20 ot)(< 10 ot)) "Turn knob to the left"]))
