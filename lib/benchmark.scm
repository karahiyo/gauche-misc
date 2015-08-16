(define-module benchmark
  (export-all)

  (define-syntax bench
    (syntax-rules ()
                  ((_ exprs) (bench-with-msg exprs (quote exprs)))
                  ((_ msg exprs) (bench-with-msg exprs msg))))

  (define-macro (bench-with-msg exprs msg)
                (let1 counter (gensym)
                      `(let1 ,counter (make <real-time-counter>)
                             (dynamic-wind
                               (lambda () (time-counter-start! ,counter))
                               (lambda () ,exprs)
                               (lambda () (begin
                                            (time-counter-stop! ,counter)
                                            (print "** " ,msg ": " (time-counter-value ,counter))))))))

  )

