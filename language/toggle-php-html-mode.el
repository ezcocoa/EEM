;;;; made by http://kldp.org/minipage/primewizard
;; 아이디어 : http://www.emacswiki.org/cgi-bin/wiki/PhpMode

;; nxhtml-mumamo php-mode nxhtml-mode nxml-mode html-helper-mode html-mode 전환
(defun toggle-php-html-mode-variously (arg)
  "Toggle among nxhtml-mumamo, php-mode, nxhtml-mode, nxml-mode, html-helper-mode, html-mode"
  (interactive "p")
  (if (= arg 4)
      ;;(= arg 4) true
      (if (or (and (string= major-mode "nxhtml-mode")(string= mode-name "nXhtml/nxhtml"))
	      (string= major-mode "php-mode") )

	  (if (fboundp 'html-helper-mode)
	      (html-helper-mode)
	    (html-mode) )

	(if (fboundp 'nxhtml-mumamo)
	    (nxhtml-mumamo)
	  (php-mode)(font-lock-mode 1) )  )

    ;;(= arg 4) false
    (cond ((or (and (string= major-mode "nxhtml-mode")(string= mode-name "nXhtml/nxhtml"))
	       (and (string= major-mode "php-mode")(string= mode-name "PHP/nxhtml")) )
	   (php-mode)(font-lock-mode 1) )

	  ((string= major-mode "php-mode")
	   (if (fboundp 'nxhtml-mumamo)(nxhtml-mumamo)) )


	  ((string= major-mode "nxhtml-mode")
	   (cond ((fboundp 'nxml-mode)(nxml-mode))
		 ((fboundp 'html-helper-mode)(html-helper-mode))
		 (t (html-mode)) )  )

	  ((string= major-mode "nxml-mode")
	   (cond ((fboundp 'html-helper-mode)(html-helper-mode))
		 (t (html-mode)) )  )

	  ((string= major-mode "html-helper-mode")
	   (html-mode) )

	  ((string= major-mode "html-mode")
	   (cond ((fboundp 'nxhtml-mode)(nxhtml-mode))
		 ((fboundp 'nxml-mode)(nxml-mode))
		 ((fboundp 'html-helper-mode)(html-helper-mode)) )  )   )

    );;(= arg 4) end
  );;defun end


;; php-mode html-helper-mode 전환
(defun toggle-php-html-mode-simply ()
  "Toggle mode between PHP & HTML Helper modes"
  (interactive)
  (cond ((string= major-mode "php-mode")
	 (if (fboundp 'html-helper-mode)
	     (html-helper-mode)
	   (html-mode) )  )
	

	((or (string= major-mode "html-helper-mode")
	     (string= major-mode "html-mode") )
	 (php-mode) )  )   )




(defun php-mode-additional-keys ()
  "Key bindings to add to `php-mode'."
  (define-key php-mode-map [(control c)(control tab)] 'toggle-php-html-mode-variously) )

(defun html-helper-mode-additional-keys ()
  "Key bindings to add to `html-helper-mode'."
  (define-key html-helper-mode-map [(control c)(control tab)] 'toggle-php-html-mode-variously) )


(defun nxhtml-mode-additional-keys ()
  "Key bindings to add to `nxhtml-mode'."
  (define-key nxhtml-mode-map [(control c)(control tab)] 'toggle-php-html-mode-variously) )

(defun nxml-mode-additional-keys ()
  "Key bindings to add to `nxml-mode'."
  (define-key nxml-mode-map [(control c)(control tab)] 'toggle-php-html-mode-variously) )

(defun html-mode-additional-keys ()
  "Key bindings to add to `html-mode'."
  (define-key html-mode-map [(control c)(control tab)] 'toggle-php-html-mode-variously) )



(add-hook 'php-mode-hook 'php-mode-additional-keys)
(add-hook 'html-helper-mode-hook 'html-helper-mode-additional-keys)

(add-hook 'nxhtml-mode-hook 'nxhtml-mode-additional-keys)
(add-hook 'nxml-mode-hook 'nxml-mode-additional-keys)
(add-hook 'html-mode-hook 'html-mode-additional-keys)
