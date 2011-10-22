;;;; made by http://kldp.org/minipage/primewizard

(defun shell-other-window (arg &optional other-shell)
  (interactive "p")
  (unless arg
    (setq arg 1) )
  (let ((old-buffer (current-buffer))
        (temp-window-alist (window-list))
        (current-shell-window nil) )
    (while (and temp-window-alist (not current-shell-window))
      (if (string-match "*shell*" 
                        (buffer-name (window-buffer (car temp-window-alist))))
          (setq current-shell-window (car temp-window-alist)) )
      (setq temp-window-alist (cdr temp-window-alist)) )
    (if current-shell-window
        (select-window current-shell-window)
      (progn (if (and (boundp 'other-shell) other-shell)
                 (funcall other-shell)
               (shell) )
             (cond ((= arg 2)
                    (split-window-vertically) )
                   ((= arg 3)
                    (split-window-horizontally) )
                   ;;(split-window-horizontally (- (window-width) (* window-min-width 2)))
                   (t (split-window-vertically (- (window-height) (* window-min-height 2)))) )
             (switch-to-buffer old-buffer)
             (other-window 1))  )   )    )


(defun py-shell-other-window (arg)
  (interactive "p")
  (if (<= arg 1)
      (setq arg 2) )
  (py-shell)
  (shrink-window (- (window-height) (* window-min-height arg))) )


        

(global-set-key [(control x)(control return)] 'shell-other-window)
(global-set-key [(control x)(control shift return)] '(lambda () (interactive) (shell-other-window nil 'eshell)))
(global-set-key [(control x)(control meta return)] 'py-shell-other-window)