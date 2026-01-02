(define pow (#%vm-procedure (=> (dynamic-require "builtins" none) "pow") 2))
(define <= (#%vm-procedure (=> (dynamic-require "operator" none) "le") 2))
(define >= (#%vm-procedure (=> (dynamic-require "operator" none) "ge") 2))

(define ->str (#%vm-procedure str-type 1))

(define foldr
    (lambda (p acc l) 
        (let ((len (length l)))
            (let loop ((i 0))
                (if (equal? i len)
                    acc
                    (p (@ l i) (loop (+ i 1))))))))

(define mul (make-procedure (lambda (l) (foldr * 1 l))))
(define string-append (make-procedure (lambda (l) (foldr + "" l))))

(define min (lambda (n1 n2) (if (< n1 n2) n1 n2)))
(define max (lambda (n1 n2) (if (< n1 n2) n2 n1)))

(define print-signature 
    (lambda (name l r) 
        (let ((format-value (lambda (e)
                                ;; e: (cons/c name (cons/c unit/literal/type null))
                                (string-append " " (@ e 0) "~" (@ e 1) " "))))
            (print
                (string-append 
                    (+ name ":")
                    (foldr (lambda (e a) (+ (format-value e) a)) "" l)
                    (+ "->" (format-value r)))))))