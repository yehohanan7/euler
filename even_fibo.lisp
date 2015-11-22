(defpackage :euler.evenfibo
  (:use :cl :euler.lambda))

(defvar *limit*)

(defun solution (&optional (a 0) (b 1) (acc 0))
  (let ((next (+ a b)))
    (cond
      ((> next *limit*) acc)
      ((evenp next) (solution b next (+ acc next)))
      (t (solution b next acc)))))

(let ((*limit* 4000000))
  (solution))







