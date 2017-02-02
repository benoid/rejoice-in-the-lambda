;; Copyright (C) David Benoit 2017
;;
;; rotate-table
;;
;; Precondition: All 2nd dimension lists in the table
;;               must be of equal length.
;;
;; Take a table represented as a two dimensional list, 
;; and rotate the list links such that first dimension
;; becomes the second, and the second dimension becomes 
;; the first.  This is useful when you need to map over 
;; a table whose dimensions are opposite of the mapping 
;; direction
;;
;; For example:
;;
;; 1 -> 2 -> 3 -> 4
;; |    |    |    |
;; V    V    V    V
;; 5    6    7    8
;; |    |    |    |
;; V    V    V    V
;; 9    10   11   12
;;
;; Becomes
;;
;; 1 -> 2 -> 3 -> 4
;; |    
;; V   
;; 5 -> 6 -> 7 -> 8
;; |    
;; V    
;; 9 -> 10 ->11 ->12

;; Standalone version
(define (rotate-table list-of-lists)
  (call-with-values 
    (lambda ()
      (apply values
             (cons list list-of-lists)))
    map))

;; Implementing the procedure via  map* makes the 
;; definition a bit more intuitive
#|
(require "./map-star.scm")

(define (rotate-table list-of-lists)
  (map* list list-of-lists))
|#
