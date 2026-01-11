(define Ccr
    (lambda (age gender weight Scr)
      (cond ((equal? gender "female")
             (/ (mul 1.04 weight (- 140 age))
                Scr))
            (else 
             (/ (mul 1.23 weight (- 140 age))
                Scr)))))

(install "Ccr" 
         '((("age" "int")
            ("gender" "\"male\"/\"female\"")
            ("weight" "kg")
            ("Cr" "umol/L"))
           ("Ccr" "ml/min"))
          Ccr)