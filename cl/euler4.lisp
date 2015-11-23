(defpackage :euler4
  (:use :cl :lambda))

(in-package :euler4)

(defun palindromep (num)
  (do ((reversed 0 (+ (* 10 reversed) (mod x 10)))
       (x num (floor (/ x 10))))
      ((zerop x) (= num reversed))))


(let ((result 0))
  (do ((i 999 (1- i))) ((= i 100) result)
    (do ((j 999 (1- j))) ((= j 100))
      (let ((product (* i j)))
        (when (and (> product result) (palindromep product))
          (setf result product))))))
