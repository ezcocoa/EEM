;;;; made by http://kldp.org/minipage/primewizard

(defun align-and-untabify-if-you-demand (beg end arg)
  (interactive "r\np")
    (align beg end)
    (if (= arg 4)
	(untabify beg end) )  )

(global-set-key [(control meta =)] 'align-and-untabify-if-you-demand)