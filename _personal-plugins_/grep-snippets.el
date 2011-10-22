;;;; made by http://kldp.org/minipage/primewizard

(defun grep-after-cd (arg dirname)
  (interactive "p\nDDirectory to grep-find: ")
  (cd dirname)
  (if (= arg 4)
      (progn (setq current-prefix-arg nil)
	     (if (boundp 'grep-host-defaults-alist)
		 (setq grep-host-defaults-alist nil) )
	     (setq grep-command "grep -inH -e ")
	     (call-interactively 'grep) )
    (progn (if (boundp 'grep-host-defaults-alist) 
		 (setq grep-host-defaults-alist nil) ) 
	   (setq grep-command nil)
	   (call-interactively 'grep) )  )   )




(defun grep-symbol-at-point (arg dirname)
  (interactive "p\nDDirectory to grep-find: ")
  (cd dirname)
  (if (= arg 4)
      (grep
       (concat "grep -inH -e " (thing-at-point 'symbol) " \"" (buffer-name) "\"") )
    (grep
     (concat "grep -nH -e " (thing-at-point 'symbol) " \"" (buffer-name) "\"") )  )   )




(defun grep-c++-symbol-at-point (arg dirname)
  (interactive "p\nDDirectory to grep-find: ")
  (cd dirname)
  (if (= arg 4)
      (grep
       (concat "grep -inH -e " (c++-symbol-at-point) " \"" (buffer-name) "\"") )
    (grep
     (concat "grep -nH -e " (c++-symbol-at-point) " \"" (buffer-name) "\"") )  )   )




(global-set-key [(control x)(control ?\')] 'grep-after-cd)
;;(global-set-key [(control ?\')] 'grep-after-cd)


(global-set-key [(control x)(meta ?\')] 'grep-symbol-at-point)
;;(global-set-key [(meta ?\')] 'grep-symbol-at-point)

(global-set-key [(control c)(meta ?\')] 'grep-c++-symbol-at-point)
