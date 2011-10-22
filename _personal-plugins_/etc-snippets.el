;;;; made by http://kldp.org/minipage/primewizard

(defun indent-tabs-mode-toggle-switch()
  (interactive)
  (if indent-tabs-mode
      (progn (setq indent-tabs-mode nil)
	     (message "indent-tabs-mode : nil") )
    (progn (setq indent-tabs-mode t)
	   (message "indent-tabs-mode : t") )  )   )


(global-set-key [(control x)(control ?8)] 'indent-tabs-mode-toggle-switch)




(defun tabify-before-save ()
  (interactive)
  (if (and (string= c-indentation-style "vs") ;;indent-tabs-mode
	   (boundp yas/minor-mode) yas/minor-mode
	   (or (string= major-mode "c-mode")(string= major-mode "c++-mode")) )
      (tabify (point-min) (point-max)) )
  (message "testing...tabify-before-save if vs indentation style") )


;;yas/after-exit-snippet-hook 에서 처리하기 때문에 이제 필요 없을 듯
;;(add-hook 'before-save-hook 'tabify-before-save)