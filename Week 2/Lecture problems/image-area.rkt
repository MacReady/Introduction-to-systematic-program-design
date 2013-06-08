;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname image-area) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; image-area-starter.rkt

; 
; PROBLEM:
; 
; DESIGN a function called image-area that consumes an image and 
; produces the area of that image. For the area it is sufficient
; to just multiple the image's width by its height.
; 
; Remember, when we say DESIGN, we mean follow the recipe.
; 
; Leave behind commented out versions of the stub and template.
; 

; Number -> Number
;produce the area of an image by multiplying its width by height
(check-expect (* 4 4) 16)
(check-expect (* 5 7) 35)

;(define (times w h) 0) ;stub
;(define (times w h))   ;template
;  (... w h)

(define (times w h)
  (* w h))