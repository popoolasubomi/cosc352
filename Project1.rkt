#lang racket

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
(define (F n [num 2])
  (if (<= n 0) (- num 1)
      (cond
        [(E num) (F (- n 1) (+ num 1))]
        [else (F n (+ num 1))])
      )
  )

; function G
(define (G num [lst (list)] [d 3])
  (cond
    [(equal? num 1) lst]
    [(equal? (modulo num 2) 0) (G (/ num 2) (append lst (list 2)) d)]
    [(equal? (modulo num d) 0) (G (/ num d) (append lst (list d)) d)]
    [else (G num lst (+ d 2))]
    )
  )
