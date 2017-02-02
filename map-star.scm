;; Copyright (C) David Benoit 2017
;; Author: David Benoit
;; map*
;;
;; Unleash the full power of mapping variardic functions.
;;
;; Scheme's built in map procedure operates on an arbitrary number
;; of equal length lists.  This is not a problem when mapping 
;; with fixed-argument functions, or mapping variardic functions
;; over an explicit number of lists.  
;;
;; The limitation of scheme's built in map occurs when it 
;; would be useful to map over an arbitrary number of lists 
;; with a variardic function.  
;;
;; map* allows programmers to map over an arbitrarily long list of lists
;; with a variardic function.  It also allows using a fixed-argument 
;; function with a list of lists, provided the length of the first 
;; list dimension is equal to the number of arguments the lambda function
;; takes.  All second dimension lists must be of equal length, or map* 
;; will fail (just like regular map).

(define (map* lmbda list-of-lists)
  (call-with-values 
    (lambda ()
      (apply values
             (cons lmbda list-of-lists)))
    map))
