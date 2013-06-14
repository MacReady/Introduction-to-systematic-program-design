;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname boxify) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)

;; boxify-starter.rkt

; 
; PROBLEM:
; 
; Use the How to Design Functions (HtDF) recipe to design a function that consumes an image, 
; and appears to put a box around it. Note that you can do this by creating an "outline" 
; rectangle that is bigger than the image, and then using overlay to put the image on top of that. 
; For example:
; 
; (boxify (circle 10 "solid" "red")) should produce .
; 
; Your complete design should include signature, purpose, commented out stub, examples/tests, 
; commented out template and the completed function definition.
; 

; Image -> Image
; consume an image and produce the same image with a box around it
(check-expect (boxify (circle 10 "solid" "red")) 0)

;(define (boxify img) 0) ;stub
;(define (boxify img)    ;template
;  (... img)
  
(define (boxify img)
  (overlay (+ 1 img))  
