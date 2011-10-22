;;;; made by http://kldp.org/minipage/primewizard

(defun c++-symbol-at-point ()
  (interactive)
  (let (beg end)
    (save-excursion
      (unless (= (point-min)(point))
	(setq beg (search-backward-regexp "\\([ \t\n]\\|[[({]\\|[])}]\\)" nil t)) )  )
    (save-excursion
      (unless (= (point-max)(point))
	(setq end (search-forward-regexp "\\([ \t\n]\\|[[({]\\|[])}]\\)" nil t)) )  )
    (if beg
	(setq beg (+ beg 1))
      (setq beg (point)) )
    (if end
	(setq end (- end 1))
      (setq end (point)) )
    (buffer-substring-no-properties beg end)) )
