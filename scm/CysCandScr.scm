(define CysCandScr2eGFR
    (lambda (age gender CysC Scr)
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
            (mul
              135 
              (pow (min (/ Scr A) 1) B) 
              (pow (max (/ Scr A) 1) -0.544) 
              (pow (min (/ CysC 0.8) 1) -0.323)
              (pow (max (/ CysC 0.8) 1) -0.778)
              (pow 0.9961 age) 
              E))))

(install "CysCandScr2eGFR" 
         '((("age" "int")
            ("gender" "\"male\"/\"female\"")
            ("CysC" "mg/L")
            ("Scr" "mg/dl"))
           ("eGFR" "ml/(minx1.73m^2)"))
          CysCandScr2eGFR)