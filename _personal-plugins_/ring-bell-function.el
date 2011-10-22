;;;; 출처 : http://www.emacsblog.org/2007/02/06/quick-tip-visible-bell/
;;;; 출처 : http://www.emacswiki.org/cgi-bin/wiki/AlarmBell

;; Emacs does not beep or flash anymore, 
;; on hit C-g in the minibuffer or during 
;; an isearch.

(setq ring-bell-function 
      (lambda ()
	(unless (memq this-command '(isearch-abort 
				     abort-recursive-edit 
				     exit-minibuffer
				     keyboard-quit
				     semantic-ia-complete-symbol-menu))
          (ding)) )  )