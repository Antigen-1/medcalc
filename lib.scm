(define pow (#%vm-procedure (=> (dynamic-require "builtins" none) "pow") 2))
(define <= (#%vm-procedure (=> (dynamic-require "operator" none) "le") 2))
(define >= (#%vm-procedure (=> (dynamic-require "operator" none) "ge") 2))

(define mul (make-procedure (lambda (l) (let ((len (length l))) (let loop ((i 0)) (if (equal? i len) 1 (* (@ l i) (loop (+ i 1)))))))))

(define min (lambda (n1 n2) (if (< n1 n2) n1 n2)))
(define max (lambda (n1 n2) (if (< n1 n2) n2 n1)))