; replace all list occurences x with z

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