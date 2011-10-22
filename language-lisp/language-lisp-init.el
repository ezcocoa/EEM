(add-to-list 'load-path "~/.emacs.d/_extensions_/highlight-parentheses")

(add-hook 'lisp-interaction-mode-hook 
	  '(lambda ()
	     ;; (show-paren-mode nil)
	     (require 'highlight-parentheses)
	     (highlight-parentheses-mode t)))

(add-hook 'lisp-mode-hook 
	  '(lambda ()
	     ;; (show-paren-mode nil)
	     (require 'highlight-parentheses)
	     (highlight-parentheses-mode t)))

(add-hook 'emacs-lisp-mode-hook 
	  '(lambda ()
	     ;; (show-paren-mode nil)
	     (require 'highlight-parentheses)
	     (highlight-parentheses-mode t)))
