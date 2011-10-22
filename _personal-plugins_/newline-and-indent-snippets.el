;;;; made by http://kldp.org/minipage/primewizard

(defvar newline-and-indent-p nil)
(defun newline-and-indent-toggle-switch (&optional arg)
  (interactive "P")
  (cond ((null arg)
	 t)
	((< (prefix-numeric-value arg) 0)
	 (setq newline-and-indent-p t))
	(t
	 (setq newline-and-indent-p nil)))
  
  (when (current-local-map)
    (let ((message-string ""))
      (if newline-and-indent-p
	  
	  (progn (setq newline-and-indent-p nil)
		 (setq message-string (concat message-string "newline-and-indent off and restored"))
		 (when (eq (lookup-key (current-local-map) [(?\r)]) 'newline-and-indent)
		   (local-unset-key [(?\r)])
		   ;;(define-key (current-local-map) [(?\r)] nil)
		   (setq message-string (concat message-string " [ RET == newline ]")))
		 (when (eq (lookup-key (current-local-map) [(control j)]) 'newline)
		   (local-unset-key [(control j)])
		   ;;(define-key (current-local-map) [(control j)] nil)
		   (setq message-string (concat message-string " [ C-j == newline-and-indent ]"))) )

	(progn (setq newline-and-indent-p t)
	       (setq message-string (concat message-string "newline-and-indent on"))
	       (when (eq (lookup-key (current-local-map) [(?\r)]) nil)
		 (define-key (current-local-map) [(?\r)] 'newline-and-indent)
		 (setq message-string (concat message-string " [ RET == newline-and-indent ]")))
	       (when (eq (lookup-key (current-local-map) [(control j)]) nil)
		 (define-key (current-local-map) [(control j)] 'newline)
		 (setq message-string (concat message-string " [ C-j == newline ]"))) )  )

      (if (string= message-string "")
	  (message "impossible")
	(message message-string)) )  )   )


(global-set-key [(control J)] 'newline-and-indent-toggle-switch)