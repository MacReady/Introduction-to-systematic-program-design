;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname movie) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; movie-starter.rkt

;; =================
;; Data definitions:

; 
; PROBLEM A:
; 
; Design a data definition to represent a movie, including  
; title, budget, and year released.
; 
; To help you to create some examples, find some interesting movie facts below: 
; "Titanic" - budget: 200000000 released: 1997
; "Avatar" - budget: 237000000 released: 2009
; "The Avengers" - budget: 220000000 released: 2012
; 
; However, feel free to resarch more on your own!
; 

(define-struct movie (t b y))

;; Movie is (make-movie String Number Number) 
;; interp. (make-movie t b y) is a movie with
;;         t is the title of the movie
;;         b is the budget of the movie
;;         y is the year of release of the movie
(define M1 (make-movie "Titanic" 200000000 1997))
(define M2 (make-movie "Avatar" 237000000 2009))

(define (fn-for-movie m)
  (... (movie-t m)       ;String
       (movie-b m)       ;Number
       (movie-y m)))     ;Number

;; Template rules used:
;; - Compound: 3 fields

;; =================
;; Functions:

; 
; PROBLEM B:
; 
; You have a list of movies you want to watch, but you like to watch your 
; rentals in chronological order. Design a function that consumes two movies 
; and produces the title of the most recently released movie.
; 
; Note that the rule for templating a function that consumes two compound data 
; parameters is for the template to include all the selectors for both 
; parameters.
; 

;; Movies -> latest release date
;; consume two movies and produce the title of the movie with the most recent release data

(check-expect (make-movie M1 M2) "Avatar")