;;;; made by http://kldp.org/minipage/primewizard

(defun insert-flymake-check-syntax-for-makefile ()
  (interactive)
  (if (or (string= mode-name "Makefile")
	  (string= mode-name "GNUmakefile") )
      (insert "check-syntax:\n\tgcc -o nul -Wall -S $(CHK_SOURCES)\n\n.PHONY: check-syntax")
    (message "It's not Makefile or GNUmakefile mode") )
  )

;; (defun insert-flymake-check-syntax-for-makefile ()
;;   (interactive)
;;   (if (or (string= major-mode "makefile-mode")
;; 	  (string= major-mode "makefile-gmake-mode") )
;;       (insert "check-syntax:\n\tgcc -o nul -Wall -S $(CHK_SOURCES)\n\n.PHONY: check-syntax")
;;     (message "It's not makefile-mode or makefile-gmake-mode") )
;;   )


(global-set-key [(control c)(c)(i)] 'insert-flymake-check-syntax-for-makefile)
(global-set-key [(control c)(c)(return)] 'flymake-mode)

;; (defun flymake-mode-additional-keys ()
;;   "flymake-mode-additional-keys"
;;   (define-key flymake-mode-map [(control c)(c)(i)] 'insert-flymake-check-syntax-for-makefile)
;;   )

;; (add-hook 'flymake-mode-hook 'flymake-mode-additional-keys)

;; (require 'flymake)
;; (defun compile-according-to-flymake-mode ()
;;   (interactive)
;;   (if flymake-mode
;;       (call-interactively 'flymake-compile)
;;     (call-interactively 'compile) )
;;   )