;Maps a function over a list 

(defun multiply (x)
    (* x 10)
)

(defun map-list (f y)
    (if (endp y) '()
        (cons
            (funcall f (car y))
            (map-list f (cdr y))
        )
    )
)

(print(map-list #'multiply '(1 2 3 4 5 6 7 8 9 10)))


