;; 출처 : http://www.stokebloke.com/wordpress/2008/04/17/emacs-refresh-f5-key/

(defun refresh-file ()
  "refresh file"
  (interactive)
  (revert-buffer t t t)
  )

(defun refresh-file-after-save-buffer ()
  "refresh file after save buffer"
  (interactive)
  (save-buffer)
  (revert-buffer t t t)
  )

(global-set-key [(control c)(control r)] 'refresh-file)
(global-set-key [(control x)(F)] 'refresh-file)
(global-set-key [(control c)(control R)] 'refresh-file-after-save-buffer)

