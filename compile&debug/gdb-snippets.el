;;;; made by http://kldp.org/minipage/primewizard

;; 아래는 전부 gdb-many-windows 일 때 좀 더 편리하게 디버깅하기 위해 필요한 것

;; 원하는 동작을 하기위해 아래 기존 함수 덮어쓰는 코드 꼭 필요함
(load "~/.emacs.d/compile&debug/gdb-overridden-functions")


(defvar gdb-display-registers-buffer-in-locals-and-registers-window-p nil)
(defvar gdb-display-threads-buffer-in-breakpoints-and-threads-window-p nil)

(defun gdb-display-registers-buffer-in-locals-and-registers-window-toggle-switch ()
  "only in `gdb-many-windows'."
  (interactive)
  (if gdb-display-registers-buffer-in-locals-and-registers-window-p
      (setq gdb-display-registers-buffer-in-locals-and-registers-window-p nil)
    (setq gdb-display-registers-buffer-in-locals-and-registers-window-p t))
  (gdb-restore-windows) )

(defun gdb-display-threads-buffer-in-breakpoints-and-threads-window-toggle-switch ()
  "only in `gdb-many-windows'."
  (interactive)
  (if gdb-display-threads-buffer-in-breakpoints-and-threads-window-p
      (setq gdb-display-threads-buffer-in-breakpoints-and-threads-window-p nil)
    (setq gdb-display-threads-buffer-in-breakpoints-and-threads-window-p t))
  (gdb-restore-windows) )




(defun gdb-display-separate-assembler-buffer (arg)
  (interactive "p")

  (if (or (= arg 4)(not gdb-source-window))
      
      (progn
	(if gdb-source-window
	    (select-window gdb-source-window))
	(gdb-display-assembler-buffer) )
    
    (let ((target-window (or (get-buffer-window (gdb-memory-buffer-name))
			     (get-buffer-window (gdb-inferior-io-name))
			     gdb-source-window)) )
      (select-window target-window)
      (if (eq target-window gdb-source-window)
	  (split-window-horizontally)
	(split-window-vertically) )
      (other-window 1)
      (setq gdb-previous-frame nil)
      (gdb-set-window-buffer
       (or (gdb-get-buffer 'gdb-assembler-buffer)
	   (gdb-get-buffer-create 'gdb-assembler-buffer)) )
      (toggle-truncate-lines 1) )  )   )

(defun gdb-use-separate-assembler-buffer (arg)
  "toggle gdb-display-separate-assembler-buffer"
  (interactive "p")
  (if (get-buffer-window (gdb-assembler-buffer-name))
      (kill-buffer (gdb-assembler-buffer-name))
    (gdb-display-separate-assembler-buffer arg)) )


(defun gdb-display-separate-memory-buffer (arg)
  (interactive "p")

  (if (or (= arg 4)(not gdb-source-window))
      
      (progn
	(if gdb-source-window
	    (select-window gdb-source-window))
	(gdb-display-memory-buffer) )
    
    (let ((target-window (or (get-buffer-window (gdb-assembler-buffer-name))
			     (get-buffer-window (gdb-inferior-io-name))
			     gdb-source-window)) )
      (select-window target-window)
      (if (eq target-window gdb-source-window)
	  (split-window-horizontally)
	(split-window-vertically) )
      (other-window 1)
      (setq gdb-previous-frame nil)
      (gdb-set-window-buffer
       (or (gdb-get-buffer 'gdb-memory-buffer)
	   (gdb-get-buffer-create 'gdb-memory-buffer)) )
      (toggle-truncate-lines 1) )  )   )

(defun gdb-use-separate-memory-buffer (arg)
  "toggle gdb-display-separate-memory-buffer"
  (interactive "p")
  (if (get-buffer-window (gdb-memory-buffer-name))
      (kill-buffer (gdb-memory-buffer-name))
    (gdb-display-separate-memory-buffer arg)) )


(defun gdb-many-windows-toggle-switch ()
  (interactive)
  (if gdb-many-windows 
      (setq gdb-many-windows nil)
    (setq gdb-many-windows t))
  (gdb-restore-windows) )




;; gud-kill을 했을때 소스코드 윈도우에서 y or n 를 입력할수 있도록 하는 함수
(defun gud-answer-with-yes()
  (interactive)
  (save-excursion
    (set-buffer gud-comint-buffer)
    (insert "y")
    (comint-send-input)) )

(defun gud-answer-with-no()
  (interactive)
  (save-excursion
    (set-buffer gud-comint-buffer)
    (insert "n")
    (comint-send-input)) )

;; source buffer에서 키보드로 브레이크 포인트 토글 할수있게 하는 함수
(defun gdb-toggle-breakpoint-in-source-buffer ()
  (interactive)
  (if (eq (car (fringe-bitmaps-at-pos)) 'breakpoint)
      (gud-remove nil)
    (gud-break nil)) )

;; gdb-mode 추가 키 설정
(defun gdb-mode-additional-keys()
  "Key bindings to add to `gdb-mode'."
  (gud-def gud-run "run" "\C-g" "Run the program.")
  (gud-def gud-kill "kill" "\C-k" "Kill the program.")
  (gud-def gud-quit "quit" "\C-q" "Quit the program.")
  (global-set-key [(control x)(control a)(y)] 'gud-answer-with-yes)
  (global-set-key [(control x)(control a)(n)] 'gud-answer-with-no)
  (global-set-key [(control x)(?\  )] 'gdb-toggle-breakpoint-in-source-buffer)

  (global-set-key [(control x)(control a)(tab)] 'gdb-restore-windows)

  (global-set-key [(control x)(control a)(A)] 'gdb-use-separate-assembler-buffer)
  (global-set-key [(control x)(control a)(M)] 'gdb-use-separate-memory-buffer)
  (global-set-key [(control x)(control a)(R)] 'gdb-display-registers-buffer-in-locals-and-registers-window-toggle-switch)
  (global-set-key [(control x)(control a)(T)] 'gdb-display-threads-buffer-in-breakpoints-and-threads-window-toggle-switch)

  (global-set-key [(control x)(control a)(shift ?\ )] 'gdb-many-windows-toggle-switch)
  (global-set-key [(control x)(control a)(*)] 'gdb-many-windows-toggle-switch) )


(add-hook 'gdb-mode-hook 'gdb-mode-additional-keys)
