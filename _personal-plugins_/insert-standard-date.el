;; 출처 : http://www.emacswiki.org/emacs/InsertDate

(defun insert-standard-date ()
    "Inserts standard date time string." 
    (interactive)
    (insert (format-time-string "%c")))