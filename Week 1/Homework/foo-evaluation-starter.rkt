;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname foo-evaluation-starter) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; foo-evaluation-starter.rkt

; 
; PROBLEM:
; 
; Given the following function definition:
; 
; (define (foo s)
;   (if (string=? (string-ith s 0) "a")
;       (string-append s "a")
;       s))
; 
; Write out the step-by-step evaluation of the expression: 
; 
; (foo (substring "abcde" 0 3))
; 
; Be sure to show every intermediate evaluation step.
; 
