;;;; made by http://kldp.org/minipage/primewizard
;; 작동은 되나 생각보다 느림 (very slow)

(defvar semantic-complete-self-insert-p nil)
(defun semantic-complete-self-insert-toggle-switch ()
  (interactive)
  (if semantic-complete-self-insert-p
      (progn (setq semantic-complete-self-insert-p nil)
	     (message "semantic-complete-self-insert off") )
    (progn (setq semantic-complete-self-insert-p t)
	   (message "semantic-complete-self-insert on") )  )   )


(defun semantic-complete-self-insert-for-dot-operator (arg)
  (interactive "p")
  (if semantic-complete-self-insert-p
      (call-interactively 'semantic-complete-self-insert)
    (self-insert-command arg) )  )

(defun semantic-complete-self-insert-for-arrow-operator (arg)
  (interactive "p")
  (if (and semantic-complete-self-insert-p
	   (string= "-" (char-to-string (char-before (point)) )  )   )
      (call-interactively 'semantic-complete-self-insert)
    (self-insert-command arg) )  )

(defun semantic-complete-self-insert-for-scope-operator (arg)
  (interactive "p")
  (if (and semantic-complete-self-insert-p
	   (string= ":" (char-to-string (char-before (point)) )  )   )
      (call-interactively 'semantic-complete-self-insert)
    (self-insert-command arg) )  )


(defun c++-mode-additional-semantic-keys ()
  "Key bindings to add to `c++-mode'."
  (define-key c++-mode-map [(control c)(control .)] 'semantic-complete-self-insert-toggle-switch)
  (define-key c++-mode-map "." 'semantic-complete-self-insert-for-dot-operator)
  (define-key c++-mode-map ">" 'semantic-complete-self-insert-for-arrow-operator)
  (define-key c++-mode-map ":" 'semantic-complete-self-insert-for-scope-operator)
  )

(add-hook 'c++-mode-hook 'c++-mode-additional-semantic-keys)




(defun global-semantic-idle-completions-mode-toggle-switch()
  (interactive)
  (if global-semantic-idle-completions-mode
      (progn (global-semantic-idle-completions-mode -1)
	     (message "global-semantic-idle-completions-mode off") )
    (progn (global-semantic-idle-completions-mode 1)
	   (message "global-semantic-idle-completions-mode on") )  )   )




(defun global-semantic-decoration-mode-toggle-switch()
  (interactive)
  (if global-semantic-decoration-mode
      (progn (global-semantic-decoration-mode -1)
	     (message "global-semantic-decoration-mode off") )
    (progn (global-semantic-decoration-mode 1)
	   (message "global-semantic-decoration-mode on") )  )   )