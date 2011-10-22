;;;; √‚√≥ : http://han9kin.doesntexist.com/28

(defun choose-header-file-mode ()
  (if (string= (file-name-extension buffer-file-name) "h")
      (let ((filebase (file-name-sans-extension buffer-file-name)))
        (cond
         ((file-exists-p (concat filebase ".c"))
          (c-mode) )
         ((file-exists-p (concat filebase ".cpp"))
          (c++-mode) )
         ((file-exists-p (concat filebase ".cc"))
          (c++-mode) )
         ((file-exists-p (concat filebase ".m"))
          (objc-mode) )
         ((file-exists-p (concat filebase ".mm"))
          (objc-mode) )
         (t
          (c++-mode) )  )   )
    ) )

(add-hook 'find-file-hook 'choose-header-file-mode t t)