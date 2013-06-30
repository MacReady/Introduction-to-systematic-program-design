;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname spinning-starter) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)
(require 2htdp/universe)

;; spinning-starter.rkt

; 
; PROBLEM:
; 
; Design a world program as follows:
; 
; The world starts off with a small square at the center of the screen. As time 
; passes, the square stays fixed at the center, but increases in size and rotates 
; at a constant speed.Pressing the spacebar resets the world so that the square 
; is small and unrotated.
; 
; Starting display:
; .
; After a few seconds:
; .
; After a few more seconds:
; .
; Immediately after pressing the spacebar:
; .
; NOTE 1: Remember to follow the HtDW recipe! Be sure to do a proper domain 
; analysis before starting to work on the code file.
; 
; NOTE 2: The rotate function requires an angle in degrees as its first 
; argument. By that it means Number[0, 360). As time goes by the box may end up 
; spinning more than once, for example, you may get to a point where it has spun 
; 362 degrees, which rotate won't accept. One solution to that is to use the 
; remainder function as follows:
; 
; (rotate (remainder ... 360) (text "hello" 30 "black"))
; 
; where ... can be an expression that produces any positive number of degrees 
; and remainderwill produce a number in [0, 360).
; 
; Remember that you can lookup the documentation of rotate if you need to know 
; more about it.
; 
; NOTE 3: There is a way to do this without using compound data. But you should 
; design the compound data based solution.
; 

;Constants:

(define WIDTH 600)
(define HEIGHT 400)

(define CTR-Y (/ HEIGHT 2))

(define S-SQUARE (square 20 "solid" "black"))

(define MTS (empty-scene WIDTH HEIGHT))

