;;;; made by http://kldp.org/minipage/primewizard

(defun scroll-one-line-at-a-time ()
  (interactive)
  (if (= scroll-conservatively 0)
      (progn (setq scroll-conservatively 10000)
	     ;;(setq scroll-step 1)
	     (message "scroll-one-line-at-a-time on") )

    (progn (setq scroll-conservatively 0)
	   (message "scroll-one-line-at-a-time off") )  )   )

(global-set-key [(control :)] 'scroll-one-line-at-a-time)

