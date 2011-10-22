;;;; made by http://kldp.org/minipage/primewizard

(defun break-out-of-maximized-frame (&optional frame)
  (interactive)
  (unless frame (setq frame (selected-frame)))
  (when (or (<= (display-pixel-width)(frame-pixel-width))
	    (<= (display-pixel-height)(frame-pixel-height)) )

    (cond ((eq window-system 'x)
	   (set-frame-parameter (selected-frame) 'fullscreen 'fullboth)
	   (sit-for 0.5)
	   (set-frame-parameter (selected-frame) 'fullscreen nil) )

	  ((eq window-system 'w32)
	   (w32-send-sys-command ?\xf120) )

	  (t (message "not support")) )

    (sit-for 0.5) )   )


(defvar semantic-speedbar-analysis-offset 25)
(defvar semantic-speedbar-analysis-caller nil)

(defun semantic-speedbar-analysis-toggle-switch (arg)
  (interactive "p")
  (if (= arg 4)(setq semantic-speedbar-analysis-caller nil))
  (if speedbar-frame
      (progn (delete-frame speedbar-frame)(speedbar -1)
	     (when semantic-speedbar-analysis-caller
	       (set-frame-width semantic-speedbar-analysis-caller
				(+ (frame-width semantic-speedbar-analysis-caller)
				   semantic-speedbar-analysis-offset) )
	       (setq semantic-speedbar-analysis-caller nil) )  )

    (progn (when (not semantic-speedbar-analysis-caller)
	     (setq semantic-speedbar-analysis-caller (selected-frame))
	     (break-out-of-maximized-frame semantic-speedbar-analysis-caller)
	     (set-frame-width semantic-speedbar-analysis-caller
			      (- (frame-width semantic-speedbar-analysis-caller)
				 semantic-speedbar-analysis-offset) )  )
	   (semantic-speedbar-analysis)
	   (speedbar-frame-reposition-smartly)
	   (select-frame-set-input-focus semantic-speedbar-analysis-caller ) )  )   )

(global-set-key [(control shift ?\  )(control return)] 'semantic-speedbar-analysis-toggle-switch)
