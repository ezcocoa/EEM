;;;; made by http://kldp.org/minipage/primewizard

(defun buffer-forward-according-to-tabbar-mode ()
  (interactive)
  (if (and (boundp 'tabbar-mode) tabbar-mode)

      (if tabbar--buffer-show-groups
	  (progn (tabbar-forward-group)
		 (tabbar-buffer-show-groups t) )
	(tabbar-forward) )

    (previous-buffer) )  )

(defun buffer-backward-according-to-tabbar-mode ()
  (interactive)
  (if (and (boundp 'tabbar-mode) tabbar-mode)

      (if tabbar--buffer-show-groups
	  (progn (tabbar-backward-group)
		 (tabbar-buffer-show-groups t) )
	(tabbar-backward) )

    (next-buffer) )  )

(defun tabbar-buffer-show-groups-toggle-switch ()
  (interactive)
  (if (and tabbar-mode tabbar--buffer-show-groups)
      (tabbar-buffer-show-groups nil)
    (tabbar-buffer-show-groups t) )  )
      

(global-set-key [(control ?\))] 'buffer-forward-according-to-tabbar-mode)
(global-set-key [(control ?\()] 'buffer-backward-according-to-tabbar-mode)
(global-set-key [(control meta ?\))] 'tabbar-buffer-show-groups-toggle-switch)
(global-set-key [(control meta ?\()] 'tabbar-buffer-show-groups-toggle-switch)
(global-set-key [(control *)] 'tabbar-buffer-show-groups-toggle-switch)
