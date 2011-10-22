;;;; 출처 : http://www.emacswiki.org/emacs/VisibleMark

(defun buffer-order-next-mark (arg)
  (interactive "p")
  (when (mark)
    (let* ((p (point))
	   (m (mark))
	   (n p)
	   (count (if (null arg) 1 arg))
	   (abscount (abs count))
	   (rel
	    (funcall
	     (if (< 0 count) 'identity 'reverse)
	     (sort (cons (cons 0 p)
			 (cons (cons (- m p) m)
			       (if mark-ring
				   (mapcar (lambda (mrm)
					     (cons (- mrm p) mrm))
					   mark-ring)
				 nil)))
		   (lambda (c d) (< (car c) (car d))))))
	   (cur rel))
      (while (and (numberp (caar cur)) (/= (caar cur) 0))
	(setq cur (cdr cur)))
      (while (and (numberp (caadr cur)) (= (caadr cur) 0))
	(setq cur (cdr cur)))
      (while (< 0 abscount)
	(setq cur (cdr cur))
	(when (null cur) (setq cur rel))
	(setq abscount (- abscount 1)))
      (when (number-or-marker-p (cdar cur))
	(goto-char (cdar cur))))))

(defun buffer-order-prev-mark (arg)
  (interactive "p")
  (buffer-order-next-mark
   (if (null arg) -1 (- arg))))


(global-set-key [(control c)(i)] 'buffer-order-next-mark)
(global-set-key [(control c)(o)] 'buffer-order-prev-mark)