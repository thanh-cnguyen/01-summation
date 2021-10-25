#lang racket/base
(define (zeros x)
    (filter (lambda (x) (even? (car x))) x))

(define (ones x)
    (filter (lambda (x) (odd? (car x))) x))

(define (add x)
    (if (null? x) 
        0
        (+ (car x) (add (cdr x)))))

(define (count-by-cat x) 
    (list 
        (add (map cadr (zeros x)))
        (add (map cadr (ones x)))))

(count-by-cat '((0 1) (1 2) (1 3) (0 4) (0 3)))

(display "By Thanh Nguyen\n")