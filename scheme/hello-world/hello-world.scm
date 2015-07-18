(define-module (hello-world)
  #:export (hello))

(define hello
  (lambda (x)
    (if (length x > 0)
      (append "Hello, " x)
      ("Hello, World!")
    )
  ))
