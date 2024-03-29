(defpackage :euler1
  (:use :cl :lambda))

(in-package :euler1)

(defun multipleof (n d)
  (zerop (mod n d)))

(defun multiplep (n)
  (or (multipleof n 3) (multipleof n 5)))

(defun solution (n)
  (reduce #'+ (remove-if-not #'multiplep (range n))))

(solution 1000)










