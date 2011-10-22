;;;; made by http://kldp.org/minipage/primewizard

;; major 모드에 맞게 gdb,perldb,pdb를 알아서 실행하는 함수
(defun gdb-according-to-major-mode ()
  "run gdb or perldb or pdb according to major mode"
  (interactive)
  (cond ((string= major-mode "perl-mode")(call-interactively 'perldb) )
	((string= major-mode "cperl-mode")(call-interactively 'perldb) )
	((string= major-mode "python-mode")(call-interactively 'pdb) )
	((or (string= major-mode "emacs-lisp-mode")
	     (string= major-mode "lisp-interaction-mode") )(edebug-defun) )
	(t (call-interactively 'gdb) )  )   )

(defun gdb-according-to-major-mode-in-new-frame (arg)
  (interactive "p")
  (unless (or (= arg 4)(string= major-mode "emacs-lisp-mode")(string= major-mode "lisp-interaction-mode"))
    (select-frame-set-input-focus (make-frame)) )
  (gdb-according-to-major-mode) )

;;(global-set-key [(f5)] 'gdb-according-to-major-mode)