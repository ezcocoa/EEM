;;;; made by http://kldp.org/minipage/primewizard

(defun ecb-move-between-ecb-and-edit-window ()
  (interactive)
  (if (memq (selected-window) (ecb-canonical-ecb-windows-list))
      (ecb-goto-window-edit-last)
    (ecb-goto-ecb-window (window-buffer (car (ecb-canonical-ecb-windows-list)))) )  )
;;    (ecb-goto-window-directories) )  )


;; 일반적인 페이지 다운에 해당
(defun scroll-up-analyse-window ()
  (interactive)
  (when (and ecb-minor-mode (get-buffer-window ecb-analyse-buffer-name ecb-frame))
    (let ((current-window  (selected-window)))
      (ecb-goto-window-analyse)
      (scroll-up)
      (select-window current-window)) )  )


;; 일반적인 페이지 업에 해당
(defun scroll-down-analyse-window ()
  (interactive)
  (when (and ecb-minor-mode (get-buffer-window ecb-analyse-buffer-name ecb-frame))
    (let ((current-window  (selected-window)))
      (ecb-goto-window-analyse)
      (scroll-down)
      (select-window current-window)) )  )