(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  'YOUR-CODE-HERE
  (car (cdr s))
)

(define (caddr s)
  'YOUR-CODE-HERE
  (car (cdr (cdr s)))
)


(define (sign num)
  'YOUR-CODE-HERE
  (cond 
    ((> num 0) 1)
    ((< num 0) -1)
    (else 0)
  )
)


(define (square x) (* x x))

(define (pow x y)
  'YOUR-CODE-HERE
  (if (zero? y)
    1
    (if (even? y)
      (square (pow x (/ y 2)))
      (* x (square (pow x (quotient y 2))))
    )
  )
)


(define (unique s)
  'YOUR-CODE-HERE
  (if (null? s)
    nil
    (cons 
      (car s) 
      (unique (filter (lambda (x) (not (equal? (car s) x))) (cdr s)))
    )
  )
)


(define (replicate x n)
  'YOUR-CODE-HERE
  (define (rep-helper cnt lst)
    (if (zero? cnt)
      lst
      (rep-helper (- cnt 1) (append (cons x nil) lst))
    )
  )
  (rep-helper n nil)
)


(define (accumulate combiner start n term)
  'YOUR-CODE-HERE
  (define (acc-helper id tot)
    (if (= id (+ n 1))
      tot
      (acc-helper (+ 1 id) (combiner tot (term id)))
    )
  )
  (acc-helper 1 start)
)


(define (accumulate-tail combiner start n term)
  'YOUR-CODE-HERE
  (define (acc-helper id tot)
    (if (= id (+ n 1))
      tot
      (acc-helper (+ 1 id) (combiner tot (term id)))
    )
  )
  (acc-helper 1 start)
)


(define-macro (list-of map-expr for var in lst if filter-expr)
  ;'YOUR-CODE-HERE
  `(map (lambda (,var) ,map-expr) (filter (lambda (,var) ,filter-expr) ,lst))
)

