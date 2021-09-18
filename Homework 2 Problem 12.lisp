(defun countNums (x)
    (cond
        ((null x) 0)
        ((symbolp x) 0)
        ((listp (car x)) (+ (countNums (car x)) (countNums(cdr x))))
        ((numberp (car x)) (+ (countNums (cdr x)) 1))
        (t
            (countNums (cdr x))
        )   
    )
)

(write "Number of numerics in the list: ")
(print(countNums 'x))
(print(countNums '(x 3)))
(print(countNums '((1 2) 3)))
