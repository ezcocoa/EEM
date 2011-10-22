;;;; made by http://kldp.org/minipage/primewizard

(defun w32-simple-print ()
  (interactive)
  (when (eq system-type 'windows-nt)
    (let ((file-name buffer-file-name)
	  (buffer-name nil) )


      (if (string-match "dos" (symbol-name buffer-file-coding-system))

	  (unless (string= (file-name-extension file-name) "txt")
	    (save-excursion (setq file-name (concat file-name ".txt"))
			    (copy-file buffer-file-name file-name)
			    (find-file file-name)
			    (setq buffer-name (buffer-name)) )	)

	(save-excursion (setq file-name (concat file-name ".txt"))
			(copy-file buffer-file-name file-name)
			(find-file file-name)
			(setq buffer-name (buffer-name))
			(set-buffer-file-coding-system 'dos)
			(save-buffer 0) )  )


      (w32-shell-execute-with-msg "print" file-name)


      (when buffer-name
	(kill-buffer buffer-name)
	(delete-file file-name) )

      )	  )    )