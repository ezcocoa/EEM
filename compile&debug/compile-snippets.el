(add-to-list 'load-path "~/.emacs.d/compile&debug/")


(require 'smart-compile)


(autoload 'mode-compile "mode-compile"
  "Command to compile current buffer file based on the major mode" t)
;;  (global-set-key "\C-cc" 'mode-compile)
(autoload 'mode-compile-kill "mode-compile"
  "Command to kill a compilation launched by `mode-compile'" t)
;;  (global-set-key "\C-ck" 'mode-compile-kill)


(defconst smart-compile-alist-backup smart-compile-alist)
(defvar old-without-debug-option nil)

(defun smart-compile-according-to-debug-option (&optional without-debug-option)
  (if without-debug-option 
      (progn (setq smart-compile-alist smart-compile-alist-backup) 
	     (add-to-list 'smart-compile-alist '("\\.c\\'"          . "gcc -O2 %f -lm -o %n"))
	     (add-to-list 'smart-compile-alist '("\\.[Cc]+[Pp]*\\'" . "g++ -O2 %f -lm -o %n")) )
    (progn (setq smart-compile-alist smart-compile-alist-backup) 
	   (add-to-list 'smart-compile-alist '("\\.c\\'"          . "gcc -g -Wall %f -lm -o %n"))
	   (add-to-list 'smart-compile-alist '("\\.[Cc]+[Pp]*\\'" . "g++ -g -Wall %f -lm -o %n")) )  )
  (unless (eq old-without-debug-option without-debug-option)
    (setq compile-command nil)
    (setq smart-compile-check-makefile t)
    (setq old-without-debug-option without-debug-option) )
  (smart-compile)    )

(defun compile-easily (arg)
  (interactive "p")
  (cond 
   ((= arg 4) (smart-compile-according-to-debug-option t))
   ((= arg 3) (call-interactively 'compile))
   ((= arg 2) (mode-compile))
   (t (smart-compile-according-to-debug-option))
   )
  )
