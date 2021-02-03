#lang racket

(define (double x y)
  (* x y)
  )

; function A
(define (A num)
  (if (< num 0) (* -1 num) num)
  )

; function B
(define (B num)
  (cond
    [(equal? num 0) 0]
    [(< num 0) -1]
    [else 1])
  )

; function C
(define (C num)
  (if (<= num 1) 1 (* num (C (- num 1))))
  )

; function D
(define (D num)
  (cond
    [(equal? num 0) 0]
    [(<= num 2) 1]
    [else (+ (D (- num 1)) (D (- num 2)))])
  )

; function E
(define (E num [n 2])
  (cond
    [(equal? num 1) #f]
    [(equal? num n) #t]
    [(equal? (modulo num n) 0) #f]
    [else (E num (+ n 1))]
    )
  )

; function F
