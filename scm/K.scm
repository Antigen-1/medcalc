(define K
    (lambda (exp act weight)
        (/ (mul (/ 2 3) (- exp act) weight 0.3) 1.34)))

(install "K" 
         '((("expectation" "mmol/L")
            ("actual" "mmol/L")
            ("weight" "kg"))
           ("15%KCl" "ml"))
         K)