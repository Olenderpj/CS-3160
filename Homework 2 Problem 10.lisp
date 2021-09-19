; Define a function substitute which takes three parameters, x, y, and z. 
; It returns a new list which replaces all occurrences of x in y with z.

(defun sub (x lst z)
    (cond
        ((null lst) nil)
        ((eq x (car lst)) (cons z (sub x (cdr lst) z)) )
        
        (t
            (cons (car lst) (sub x (cdr lst) z))
        )
    )
)
            
(print (sub 1 '(1 2 3 4 5 6 1 2 3 4 5 6) 'x))
