;; 출처 : http://kldp.org/node/40559#comment-138114

(defun devhelp-word-at-point-for-c++ ()
  "runs devhelp"
  (interactive)
  (start-process-shell-command "devhelp" nil "devhelp" "-s" (c++-symbol-at-point))
  )


(defun search-naver-dic ()
  (interactive)
  (browse-url
   (concat "http://endic.naver.com/search.naver?mode=all&query="
	   (thing-at-point 'word) )  )
  )

(defun search-manpages (arg)
  (interactive "p")
  (browse-url 
   (concat "http://manpages.debian.net/cgi-bin/man.cgi?sektion=0&manpath=Debian+4.0+etch&apropos=1&format=html&locale=en&query="
	   (thing-at-point 'symbol) )  )
 
  (when (not (= arg 4))
    (browse-url 
     (concat (concat "http://www.die.net/search/?q="
		     (thing-at-point 'symbol) )
	     "&sa=Search&ie=ISO-8859-1&cx=partner-pub-5823754184406795%3A54htp1rtx5u&cof=FORID%3A9#942") )  )

  (when (= arg 16)
    (browse-url "http://www.linuxmanpages.com/") )
  )
  
(defun search-language-reference (arg)
  (interactive "p")
  (let ((major-mode-string (symbol-name major-mode)))
    (cond ((string= major-mode "c-mode")
	   (browse-url
	    (concat "http://www.cplusplus.com/query/search.cgi?q="
		    (thing-at-point 'symbol) )  )
	   
	   (when (not (= arg 4))
	     (browse-url 
	      (concat "http://www.google.com/custom?domains=library.gnome.org&sitesearch=library.gnome.org&q="
		      (thing-at-point 'symbol) )  )   )

	   (when (= arg 16)
	     (devhelp-word-at-point) )  )


	  ((string= major-mode "c++-mode")
	   (browse-url
	    (concat "http://www.cplusplus.com/query/search.cgi?q="
		    (c++-symbol-at-point) )  )
	   
	   (when (not (= arg 4))
	       (browse-url 
		(concat "http://www.google.com/custom?sa=Google+gtkmm+Search&cof=L:http://www.gtkmm.org/images/gtkmm_logo_small.png;AH:center;S:http://www.gtkmm.org;&domains=http://www.gtkmm.org/docs/&sitesearch=http://www.gtkmm.org/docs/&q="
			(c++-symbol-at-point) )  )   )

	   (when (= arg 16)
	     (devhelp-word-at-point-for-c++) )  )


	  ((or (string-match "makefile" major-mode-string)
	       (string-match "autoconf" major-mode-string)
	       (string-match "m4" major-mode-string) )
	   (browse-url
	    (concat "http://www.gnu.org/cgi-bin/estseek.cgi?phrase="
		    (thing-at-point 'symbol) )  )   )


	  ((string-match "perl" major-mode-string)
	   (browse-url
	    (concat "http://search.cpan.org/search?mode=all&query="
		    (thing-at-point 'symbol) )  )   )


	  ((string-match "python" major-mode-string)
	   (browse-url
	    (concat "http://www.google.co.kr/search?domains=coreapython.hosting.paran.com&sitesearch=coreapython.hosting.paran.com&q="
		    (thing-at-point 'symbol) )  )
	   (unless (= arg 4)
	     (browse-url
	      (concat "http://www.google.com/search?domains=www.python.org&sitesearch=www.python.org&sourceid=google-search&submit=search&q="
		      (thing-at-point 'symbol) )  )   )    )


	  ((string-match "ruby" major-mode-string)
	   (browse-url
	    (concat (concat "http://www.ruby-doc.org/search19.html?cx=011815814100681837392%3Ap5h999wk4e4&cof=FORID%3A9&q="
		    (thing-at-point 'symbol) )
	    "&sa=Search#923") )  )


	  ((string-match "php" major-mode-string)
	   (browse-url ;;"http://kr2.php.net/results.php?p=manual&l=en&q="
	    (concat "http://php.net/results.php?p=manual&l=en&q="
		    (thing-at-point 'symbol) )  )   )
	  ) )  )


(global-set-key [(control x)(meta d)] 'search-naver-dic)
(global-set-key [(control x)(meta m)] 'search-manpages)
(global-set-key [(control x)(meta h)] 'search-language-reference)

(global-set-key [(control x)(meta u)] '(lambda () (interactive) (browse-url-at-point) )  )


;; elisp를 위한 추가 키바인딩
(global-set-key [(control h)(meta f)] '(lambda () (interactive) (describe-function (symbol-at-point) )  )   )
(global-set-key [(control h)(meta v)] '(lambda () (interactive) (describe-variable (symbol-at-point) )  )   )

(global-set-key [(control h)(meta a)] '(lambda () (interactive) (apropos-command (thing-at-point 'word) )  )   )
(global-set-key [(control h)(meta d)] '(lambda () (interactive) (apropos-documentation (thing-at-point 'word) )  )   )


;; (defun search-gtkmm-reference ()
;;   (interactive)
;;   (browse-url 
;;    (concat "http://www.cplusplus.com/query/search.cgi?q="
;; 	   (thing-at-point 'symbol) )  )
;;   (browse-url 
;;    (concat "http://www.google.com/custom?sa=Google+gtkmm+Search&cof=L:http://www.gtkmm.org/images/gtkmm_logo_small.png;AH:center;S:http://www.gtkmm.org;&domains=http://www.gtkmm.org/docs/&sitesearch=http://www.gtkmm.org/docs/&q="
;; 	   (thing-at-point 'symbol) )  )
;;   )

;; (global-set-key [(control x)(meta g)] 'search-gtkmm-reference)