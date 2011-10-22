;;;; made by http://kldp.org/minipage/primewizard

;;text-scale-adjust로 하면 select-window 한 다른 윈도우에서 즉각 반응이 안 되서
;;text-scale-increase를 사용함
(defvar text-scale-step-alist '(0 1.5 3))
(defun text-scale-step-in-turn ()
  (interactive)
  (let ((temp-step-alist text-scale-step-alist)
	(temp-step 0)
	(matched-p nil))
    
    (while (and (not matched-p) temp-step-alist)
      (setq temp-step  (car temp-step-alist))
      (if (or (not (boundp 'text-scale-mode-amount)) (= temp-step text-scale-mode-amount))
	(setq matched-p t))
      (setq temp-step-alist (cdr temp-step-alist)) )

    (if temp-step-alist
	(text-scale-increase (- (car temp-step-alist) temp-step))
      (text-scale-increase 0)) )  )

(defun text-scale-step-in-turn-for-all-window (&optional arg)
  (interactive "p")
  (let ((current-window (selected-window))
	(temp-window-alist nil)
	(temp-window-element nil) )

    (select-window (frame-first-window))
    (setq temp-window-alist (window-list))

    (while temp-window-alist
      (setq temp-window-element (car temp-window-alist))

      (unless (and (fboundp 'ecb-canonical-ecb-windows-list)
		   (memq temp-window-element (ecb-canonical-ecb-windows-list)))
	(select-window temp-window-element)
	(if (= arg 4)(text-scale-increase 0))
	(text-scale-step-in-turn))

      (setq temp-window-alist (cdr temp-window-alist)) )

    (select-window current-window) )  )


(global-set-key [(control meta shift ?\  )] 'text-scale-step-in-turn)
(define-key ctl-x-map [(control meta shift ?\  )] 'text-scale-step-in-turn-for-all-window)


;; * 내가 원하는 글자 크기로 토글한다.
;; (global-set-key [(control meta shift ?\  )] 
;; 		'(lambda () (interactive)
;;                    (if (or (not (boundp 'text-scale-mode-amount)) (= text-scale-mode-amount 0))
;;                        (text-scale-adjust (* text-scale-mode-step 1.5))
;;                      (text-scale-adjust 0) )  )   )
