;;;; made by http://kldp.org/minipage/primewizard

;; 아~무 이유없어~! 그냥 만들었음 주의해서 사용
(defun resize-window-height-by-step (&optional ARG)
  "Resize window height by step
ARG : 1/10 degree (e.g. 5 -> 5/10)
      default ARG is 7"
  (interactive)
  (let ((newsize))
    (if (null ARG) (setq ARG 7))
    (setq newsize (* (frame-height) (/ ARG 10.0)))
    (setq newsize (floor newsize))
    (cond 
     ((= newsize (window-height)) )
     ((> newsize (window-height))
      (enlarge-window (- newsize (window-height))) )
     ((< newsize (window-height))
      (shrink-window (- (window-height) newsize)) )  )
    ) )

(defun resize-window-width-by-step (&optional ARG)
  "Resize window width by step
ARG : 1/10 degree (e.g. 5 -> 5/10)
      default ARG is 7"
  (interactive)
  (let ((newsize))
    (if (null ARG) (setq ARG 7))
    (setq newsize (* (frame-width) (/ ARG 10.0)))
    (setq newsize (floor newsize))
    (cond 
     ((= newsize (window-width)))
     ((> newsize (window-width))
      (enlarge-window-horizontally (- newsize (window-width))) )
     ((< newsize (window-width))
      (shrink-window-horizontally (- (window-width) newsize)) )  )
    ) )


(global-set-key [(control H)(?1)] '(lambda () (interactive) (resize-window-height-by-step 1) )  )
(global-set-key [(control H)(?2)] '(lambda () (interactive) (resize-window-height-by-step 2) )  )
(global-set-key [(control H)(?3)] '(lambda () (interactive) (resize-window-height-by-step 3) )  )
(global-set-key [(control H)(?4)] '(lambda () (interactive) (resize-window-height-by-step 4) )  )
(global-set-key [(control H)(?5)] '(lambda () (interactive) (resize-window-height-by-step 5) )  )
(global-set-key [(control H)(?6)] '(lambda () (interactive) (resize-window-height-by-step 6) )  )
(global-set-key [(control H)(?7)] '(lambda () (interactive) (resize-window-height-by-step 7) )  )
(global-set-key [(control H)(?8)] '(lambda () (interactive) (resize-window-height-by-step 8) )  )
(global-set-key [(control H)(?9)] '(lambda () (interactive) (resize-window-height-by-step 9) )  )

(global-set-key [(control W)(?1)] '(lambda () (interactive) (resize-window-width-by-step 1) )  )
(global-set-key [(control W)(?2)] '(lambda () (interactive) (resize-window-width-by-step 2) )  )
(global-set-key [(control W)(?3)] '(lambda () (interactive) (resize-window-width-by-step 3) )  )
(global-set-key [(control W)(?4)] '(lambda () (interactive) (resize-window-width-by-step 4) )  )
(global-set-key [(control W)(?5)] '(lambda () (interactive) (resize-window-width-by-step 5) )  )
(global-set-key [(control W)(?6)] '(lambda () (interactive) (resize-window-width-by-step 6) )  )
(global-set-key [(control W)(?7)] '(lambda () (interactive) (resize-window-width-by-step 7) )  )
(global-set-key [(control W)(?8)] '(lambda () (interactive) (resize-window-width-by-step 8) )  )
(global-set-key [(control W)(?9)] '(lambda () (interactive) (resize-window-width-by-step 9) )  )


(global-set-key [(control x)(H)(?1)] '(lambda () (interactive) (resize-window-height-by-step 1) )  )
(global-set-key [(control x)(H)(?2)] '(lambda () (interactive) (resize-window-height-by-step 2) )  )
(global-set-key [(control x)(H)(?3)] '(lambda () (interactive) (resize-window-height-by-step 3) )  )
(global-set-key [(control x)(H)(?4)] '(lambda () (interactive) (resize-window-height-by-step 4) )  )
(global-set-key [(control x)(H)(?5)] '(lambda () (interactive) (resize-window-height-by-step 5) )  )
(global-set-key [(control x)(H)(?6)] '(lambda () (interactive) (resize-window-height-by-step 6) )  )
(global-set-key [(control x)(H)(?7)] '(lambda () (interactive) (resize-window-height-by-step 7) )  )
(global-set-key [(control x)(H)(?8)] '(lambda () (interactive) (resize-window-height-by-step 8) )  )
(global-set-key [(control x)(H)(?9)] '(lambda () (interactive) (resize-window-height-by-step 9) )  )

(global-set-key [(control x)(W)(?1)] '(lambda () (interactive) (resize-window-width-by-step 1) )  )
(global-set-key [(control x)(W)(?2)] '(lambda () (interactive) (resize-window-width-by-step 2) )  )
(global-set-key [(control x)(W)(?3)] '(lambda () (interactive) (resize-window-width-by-step 3) )  )
(global-set-key [(control x)(W)(?4)] '(lambda () (interactive) (resize-window-width-by-step 4) )  )
(global-set-key [(control x)(W)(?5)] '(lambda () (interactive) (resize-window-width-by-step 5) )  )
(global-set-key [(control x)(W)(?6)] '(lambda () (interactive) (resize-window-width-by-step 6) )  )
(global-set-key [(control x)(W)(?7)] '(lambda () (interactive) (resize-window-width-by-step 7) )  )
(global-set-key [(control x)(W)(?8)] '(lambda () (interactive) (resize-window-width-by-step 8) )  )
(global-set-key [(control x)(W)(?9)] '(lambda () (interactive) (resize-window-width-by-step 9) )  )




(defun resize-window-height-as-high-as-possible ()
  (interactive)
  (let ((current-window (selected-window))
	(pass-current-window-p nil)
	(temp-window-list nil)
	(temp-window-element nil)
	(sum-offset 0) )

    (select-window (frame-first-window))
    (setq temp-window-list (window-list))

    (while temp-window-list
      (setq temp-window-element (car temp-window-list))
      (unless (and (fboundp 'ecb-canonical-ecb-windows-list)(memq temp-window-element (ecb-canonical-ecb-windows-list)))
        (if (and (eq temp-window-element current-window)(not (= (length temp-window-list) 2)))
            (setq pass-current-window-p t)
          (progn 
            (select-window temp-window-element)
            (if pass-current-window-p
                (setq sum-offset (+ sum-offset (- (window-height) window-min-height)))
              (shrink-window (- (window-height) window-min-height)) )  )   )    )

      (setq temp-window-list (cdr temp-window-list)) )


    (select-window current-window)
    (enlarge-window sum-offset) )  )

(defun resize-window-width-as-high-as-possible ()
  (interactive)
  (let ((current-window (selected-window))
	(pass-current-window-p nil)
	(temp-window-list nil)
	(temp-window-element nil)
	(sum-offset 0) )

    (select-window (frame-first-window))
    (setq temp-window-list (window-list))

    (while temp-window-list
      (setq temp-window-element (car temp-window-list))
      (unless (and (fboundp 'ecb-canonical-ecb-windows-list)(memq temp-window-element (ecb-canonical-ecb-windows-list)))
        (if (and (eq temp-window-element current-window)(not (= (length temp-window-list) 2)))
            (setq pass-current-window-p t)
          (progn 
            (select-window temp-window-element)
            (if pass-current-window-p
                (setq sum-offset (+ sum-offset (- (window-width) window-min-width)))
              (shrink-window-horizontally (- (window-width) window-min-width)) )  )   )    )

      (setq temp-window-list (cdr temp-window-list)) )


    (select-window current-window)
    (enlarge-window-horizontally sum-offset) )  )


(global-set-key [(control H)(control H)] 'resize-window-height-as-high-as-possible  )
(global-set-key [(control W)(control W)] 'resize-window-width-as-high-as-possible)

(global-set-key [(control x)(H)(H)] 'resize-window-height-as-high-as-possible)
(global-set-key [(control x)(W)(W)] 'resize-window-width-as-high-as-possible)
