(define table #hasheq{})

(define install
    (lambda (name signature proc)
        (! table name (cons signature (cons proc null)))))
(define call
    (lambda (name)
        (#%scm-procedure
            (make-procedure
                (lambda (args)
                    (apply (cadr (@ table name)) args)))
            #f)))
(define help
    (lambda (name)
        (print (string-append name ":" (apply format-signature (car (@ table name)))))))
(define list-pkgs
    (lambda ()
        (vm-apply (=> table "keys") '())))

(cons (#%scm-procedure call 1) (cons (#%scm-procedure help 1) (cons (#%scm-procedure list-pkgs 0) null)))