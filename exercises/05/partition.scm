(require rackunit rackunit/text-ui)

(define partition-tests
  (test-suite
    "Tests for partition"

    (check = (partition even? '(1 2 3 4 5 6 7))
             '((2 4 6) (1 3 5 7)))
    (check = (partition odd? '(1 3 3 7 42))
             '((1 3 3 7) (42)))
    (check = (partition odd? '(3))
             '((3) ()))
    (check = (partition even? '())
             '())
    (check = (partition (lambda (x) (< x 4))
                        '(1 2 3 4 5 6 7))
             '((1 2 3) (4 5 6 7)))
))

(run-tests partition-tests)
