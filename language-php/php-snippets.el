;;;; made by http://kldp.org/minipage/primewizard

(defun mark-php ()
  (interactive)
  (if (string= major-mode "php-mode")
      (let (beg end)
	(when (search-backward "<?php" nil t)
	  (move-beginning-of-line 2)
	  (setq beg (point)) )
	(when (search-forward "?>" nil t)
	  (move-beginning-of-line 1)
	  (setq end (point)) )
	(if (and beg end)
	    (progn (goto-char end)(push-mark nil t t)(goto-char beg))
	  (message "not in php region") )  )

    (message "not php-mode") )  )


(defun insert-aiding-keyword-for-php-indent ()
  (interactive)
  (if (string= major-mode "php-mode")
      (progn (unless (string= " " (char-to-string (char-before (point))))(insert " "))
	     (insert "/*>*/") )

    (message "not php-mode") )  )

(defun php-mode-additional-keys2 ()
  "Key bindings to add to `php-mode'."
  (define-key php-mode-map [(meta ?\?)] 'mark-php)
  (define-key php-mode-map [(control c)(meta ?\?)] 'insert-aiding-keyword-for-php-indent) )

(add-hook 'php-mode-hook 'php-mode-additional-keys2)

;;(global-set-key [(meta ?\?)] 'mark-php)
;;(global-set-key [(control c)(meta ?\?)] 'insert-aiding-keyword-for-php-indent)


