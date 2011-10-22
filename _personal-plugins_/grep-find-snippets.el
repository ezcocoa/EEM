;;;; made by http://kldp.org/minipage/primewizard

(defun grep-find-after-cd (arg dirname)
  (interactive "p\nDDirectory to grep-find: ")
  (cd dirname)
  (if (= arg 4)
      (progn (if (boundp 'grep-host-defaults-alist)
		 (setq grep-host-defaults-alist nil) )
	     (setq grep-command "grep -inH -e ")
	     (setq grep-find-command nil)
	     (call-interactively 'grep-find) )
    (progn (if (boundp 'grep-host-defaults-alist)
		 (setq grep-host-defaults-alist nil) )
	   (setq grep-command nil)
	     (setq grep-find-command nil)
	     (call-interactively 'grep-find) )  )   )

(defalias 'find-grep-after-cd 'grep-find-after-cd)




(defun grep-find-symbol-at-point (arg dirname)
  (interactive "p\nDDirectory to grep-find: ")
  (cd dirname)
  (if (= arg 4)
      (grep-find
       (concat "find . -type f -print0 | xargs -0 -e grep -inH -e " (thing-at-point 'symbol)) )
    (grep-find
     (concat "find . -type f -print0 | xargs -0 -e grep -nH -e " (thing-at-point 'symbol)) )  )   )

(defalias 'find-grep-symbol-at-point 'grep-find-symbol-at-point)


(defun grep-find-c++-symbol-at-point (arg dirname)
  (interactive "p\nDDirectory to grep-find: ")
  (cd dirname)
  (if (= arg 4)
      (grep-find
       (concat "find . -type f -print0 | xargs -0 -e grep -inH -e " (c++-symbol-at-point)) )
    (grep-find
     (concat "find . -type f -print0 | xargs -0 -e grep -nH -e " (c++-symbol-at-point)) )  )   )

(defalias 'find-grep-c++-symbol-at-point 'grep-find-c++-symbol-at-point)




(defun grep-find-symbol-at-point-for-getting-necessary-include-header-file (arg dirname)
  (interactive "p\nDDirectory to grep-find: ")
  (cd dirname)
  (if (= arg 4)
      (grep-find
       (concat 
	"find . -type f -regex \".*\\.[hH]+[pPxX]*$\" -print0 | xargs -0 -e grep -inH -e "
	(concat "\"\\(^\\|[ ]\\)" (concat (thing-at-point 'symbol) "(\"") )  )   )

    (grep-find
     (concat 
      "find . -type f -regex \".*\\.[hH]+[pPxX]*$\" -print0 | xargs -0 -e grep -nH -e "
      (concat "\"\\(^\\|[ ]\\)" (concat (thing-at-point 'symbol) "(\"") )  )   )    )     )

(defalias 'find-grep-symbol-at-point-for-getting-necessary-include-header-file 'grep-find-symbol-at-point-for-getting-necessary-include-header-file)


(defun grep-find-c++-symbol-at-point-for-getting-necessary-include-header-file (arg dirname)
  (interactive "p\nDDirectory to grep-find: ")
  (cd dirname)
  (if (= arg 4)
      (grep-find
       (concat 
	"find . -type f -regex \".*\\.[hH]+[pPxX]*$\" -print0 | xargs -0 -e grep -nH -e "
	(concat "\"\\(^\\|[ ]\\)" (concat (c++-symbol-at-point) "(\"") )  )   )

    (grep-find
     (concat 
      "find . -type f -regex \".*\\.[hH]+[pPxX]*$\" -print0 | xargs -0 -e grep -nH -e "
      (concat "\"\\(^\\|[ ]\\)" (concat (c++-symbol-at-point) "(\"") )  )   )    )     )

(defalias 'find-grep-c++-symbol-at-point-for-getting-necessary-include-header-file 'grep-find-c++-symbol-at-point-for-getting-necessary-include-header-file)




(global-set-key [(control x)(control ?\")] 'grep-find-after-cd)
(global-set-key [(control ?\")] 'grep-find-after-cd)


(global-set-key [(control x)(meta ?\")] 'grep-find-symbol-at-point)
(global-set-key [(meta ?\")] 'grep-find-symbol-at-point)

(global-set-key [(control c)(meta ?\")] 'grep-find-c++-symbol-at-point)


(global-set-key [(control x)(control ?\#)] 'grep-find-symbol-at-point-for-getting-necessary-include-header-file)
(global-set-key [(control ?\#)] 'grep-find-symbol-at-point-for-getting-necessary-include-header-file)

(global-set-key [(control c)(control ?\#)] 'grep-find-c++-symbol-at-point-for-getting-necessary-include-header-file)
