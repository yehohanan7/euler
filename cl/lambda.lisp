(defpackage :lambda
  (:use :cl)
  (:export :compose
           :range
           :defun-fn))

(in-package :lambda)

(defun compose (&rest fns)
  (destructuring-bind (fn1 . rest) (reverse fns)
    #'(lambda (&rest args)
        (reduce #'(lambda (v f) (funcall f v)) rest :initial-value (apply fn1 args)))))

(defmacro defun-fn (var fn)
  `(progn
     (defvar ,var)
     (setf (symbol-function ',var) ,fn)))

(defun range (max &key (min 0) (step 1))
   (loop for n from min below max by step
      collect n))

