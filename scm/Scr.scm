(define Scr2eGFR
    (lambda (age gender Scr)
        (let ((A none) (B none) (C 1))
            (if (equal? gender "female")
                (begin (set! A 0.7) (set! B -0.241) (set! C 1.012))
                (begin (set! A 0.9) (set! B -0.302)))
            (mul 142 (pow (min (/ Scr A) 1) B) (pow (max (/ Scr A) 1) -1.200) (pow 0.9938 age) C))))

(install
    "Scr2eGFR" 
    '((("age" "int")
       ("gender" "\"male\"/\"female\"")
       ("Scr" "mg/dl"))
      ("eGFR" "ml/(minx1.73m^2)"))
    Scr2eGFR)