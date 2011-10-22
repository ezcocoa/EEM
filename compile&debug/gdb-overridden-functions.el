;; 내가 원하는 동작을 하기 위해 기존 코드 gdb-setup-windows, gdb-restore-windows 덮어쓰기
(require 'gdb-ui)

(if (fboundp 'gdb-setup-windows)
    (fmakunbound 'gdb-setup-windows) )

(defun gdb-setup-windows ()
  "Layout the window pattern for `gdb-many-windows'.
modified a little by primewizard"
  
  ;; added
  (if gdb-display-registers-buffer-in-locals-and-registers-window-p
      (gdb-display-registers-buffer)
    (gdb-display-locals-buffer) )

  (gdb-display-stack-buffer)

  (delete-other-windows)
  
  ;; added
  (if gdb-display-threads-buffer-in-breakpoints-and-threads-window-p
      (gdb-display-threads-buffer)
    (gdb-display-breakpoints-buffer) )

  (delete-other-windows)
  ; Don't dedicate.
  (pop-to-buffer gud-comint-buffer)
  (split-window nil ( / ( * (window-height) 3) 4))
  (split-window nil ( / (window-height) 3))
  (split-window-horizontally)
  (other-window 1)

  ;; added
  (if gdb-display-registers-buffer-in-locals-and-registers-window-p
      (gdb-set-window-buffer (gdb-registers-buffer-name))
    (gdb-set-window-buffer (gdb-locals-buffer-name)))

  (other-window 1)
  (switch-to-buffer
       (if gud-last-last-frame
	   (gud-find-file (car gud-last-last-frame))
	 (if gdb-main-file
	     (gud-find-file gdb-main-file)
	   ;; Put buffer list in window if we
	   ;; can't find a source file.
	   (list-buffers-noselect))))
  (setq gdb-source-window (selected-window))

  (when gdb-use-separate-io-buffer
    (split-window-horizontally)
    (other-window 1)
    (gdb-set-window-buffer
     (gdb-get-buffer-create 'gdb-inferior-io)))

  (other-window 1)
  (gdb-set-window-buffer (gdb-stack-buffer-name))
  (split-window-horizontally)
  (other-window 1)

  ;; added
  (if gdb-display-threads-buffer-in-breakpoints-and-threads-window-p
      (gdb-set-window-buffer (gdb-threads-buffer-name))
    (gdb-set-window-buffer (gdb-breakpoints-buffer-name)) )

  (other-window 1)

  ;; added
  (let ((old-selected-window (selected-window)))
    (if (gdb-get-buffer 'gdb-assembler-buffer)
	(gdb-display-separate-assembler-buffer 1))

    (if (gdb-get-buffer 'gdb-memory-buffer)
	(gdb-display-separate-memory-buffer 1))

    (select-window old-selected-window) )  )


(if (fboundp 'gdb-restore-windows)
    (fmakunbound 'gdb-restore-windows) )

(defun gdb-restore-windows ()
  "Restore the basic arrangement of windows used by gdba.
This arrangement depends on the value of `gdb-many-windows'.
modified a little by primewizard"
  (interactive)
  (pop-to-buffer gud-comint-buffer)	;Select the right window and frame.
    (delete-other-windows)
  (if gdb-many-windows
      (gdb-setup-windows)
    (when (or gud-last-last-frame gdb-show-main)
      ;;added
      (split-window nil ( / (window-height) 3))
      ;;(split-window)
      (other-window 1)
      (switch-to-buffer
       (if gud-last-last-frame
	   (gud-find-file (car gud-last-last-frame))
	 (gud-find-file gdb-main-file)))
      (setq gdb-source-window (selected-window))
      (other-window 1))))
