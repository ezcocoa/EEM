;;;; made by http://kldp.org/minipage/primewizard

(defun insert-file-local-variables-according-to-environments ()
  (interactive)
  (let ((beg (point)))
    (insert (concat "-*- "
		    "mode: " (car (split-string mode-name "/")) "; " 
		    "indent-tabs-mode: " (symbol-name indent-tabs-mode) "; "
		    "tab-width: " (number-to-string tab-width) "; "
		    (if c-indentation-style (concat "c-file-style: " c-indentation-style "; "))
		    "-*-"))
    (comment-region beg (point)) )  )

(global-set-key [(control c)(*)] 'insert-file-local-variables-according-to-environments)