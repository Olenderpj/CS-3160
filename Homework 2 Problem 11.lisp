(setq testList '(1 2 3 4 7 8 9))


(defun findValue (x vlist)
    (cond
    ((= x (car vlist)) x)
    ((null vlist) '()) ; returns an empty array
    (t (findValue x (cdr vlist)))
    )
)

(print "Searching Test list: ")
(setq result (findValue 4 testList))

(print result)