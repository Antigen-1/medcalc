(define R
    (lambda (ast_r ast_b alp_r alp_b)
        (/ (/ ast_r ast_b) (/ alp_r alp_b))))

(install "R"
         '((("ALT/AST实测值" "U/L")
            ("ALT/AST正常值上限" "U/L")
            ("ALP实测值" "U/L")
            ("ALP正常值上限" "U/L"))
           ("R" "float"))
         R)