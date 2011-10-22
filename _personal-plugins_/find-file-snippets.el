;;;; made by http://kldp.org/minipage/primewizard

(defun find-file-at-point-other-window (arg)
  (interactive "p")
  (let ((old-buffer (current-buffer))) 
    (find-file-at-point)
    (if (= arg 4)
	(split-window-horizontally)
      (split-window-vertically) )
    (switch-to-buffer old-buffer)
  (other-window 1) )  )

(global-set-key [(control x)(?4)(meta f)] 'find-file-at-point-other-window)


(defun ff-find-other-file-in-other-window (arg)
  (interactive "p")
  (if (= arg 4)
      (ff-find-other-file)
    (progn (if (and (= (length (window-list)) 1)(> (frame-width) 150))
	       (split-window-horizontally))
      (ff-find-other-file t)) )  )

(global-set-key [(control x)(?4)(control F)] 'ff-find-other-file-in-other-window)