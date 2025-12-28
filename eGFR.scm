(define pow (#%vm-procedure (=> (dynamic-require "builtins" none) "pow") 2))
(define <= (#%vm-procedure (=> (dynamic-require "operator" none) "le") 2))
(define >= (#%vm-procedure (=> (dynamic-require "operator" none) "ge") 2))

(define min (lambda (n1 n2) (if (< n1 n2) n1 n2)))
(define max (lambda (n1 n2) (if (< n1 n2) n2 n1)))

(define eGFR 
    (lambda (age gender Scr CysC)
        (let ((A none)
              (B none)
              (E none))
            (cond ((equal? gender "female")
                   (set! E 0.963)
                   (set! A 0.7)
                   (set! B -0.219)
                   )
                  (else 
                    (set! E 1)
                    (set! A 0.9)
                    (set! B -0.144)
                    ))
            (*  135 
                (pow (min (/ Scr A) 1) B) 
                (pow (max (/ Scr A) 1) -0.544) 
                (pow (min (/ CysC 0.8) 1) -0.323)
                (pow (max (/ CysC 0.8) 1) -0.778)
                (pow 0.9961 age) 
                E))))

(#%scm-procedure eGFR 4)