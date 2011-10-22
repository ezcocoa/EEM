;;;; made by http://kldp.org/minipage/primewizard

;; 모드에 맞게 폴딩 키워드를 알아서 넣는 함수
;; 아무 이유 없어 ~! 그냥 뭔가 해보고 싶었어~~
(defun insert-folding-keyword-according-to-major-mode (&optional isEndKeyword)
  "Insert folding keyword according to major mode"
  (let ((temp folding-mode-marks-alist)
	(folding-keyword nil)
	element
	folding-start-keyword
	folding-end-keyword
	folding-rest-keyword
	) 
    (while (and temp (not folding-keyword))
      (setq element (car temp))
      (if (string= major-mode (car element) )
	  (progn 
	    ;;(print element)
	    (setq folding-keyword (cdr element))
	    (setq folding-start-keyword (car folding-keyword))
	    (setq folding-end-keyword (cdr folding-keyword))
	    ;;(print (car folding-end-keyword))
	    ;;(print (cdr folding-end-keyword))
	    (if (cdr folding-end-keyword)
		(progn
		  (setq folding-rest-keyword (cdr folding-end-keyword))
		  (setq folding-start-keyword (concat folding-start-keyword (car folding-rest-keyword) )  )
		  (setq folding-end-keyword (car folding-end-keyword))
		  )
	      (progn
		(setq folding-start-keyword (concat folding-start-keyword " " )  )
		(setq folding-end-keyword (car folding-end-keyword))
		)
	      )
	    ;;(print folding-start-keyword)
	    ;;(print folding-end-keyword)
	    )
	)
      (setq temp (cdr temp))
      )
    (if (not isEndKeyword)
	(insert folding-start-keyword)
      (insert folding-end-keyword)
      )
    )
  )

(defun insert-folding-start-keyword-according-to-major-mode ()
  "Insert folding start keyword according to major mode"
  (interactive)
  (insert-folding-keyword-according-to-major-mode)
  )

(defun insert-folding-end-keyword-according-to-major-mode ()
  "Insert folding end keyword according to major mode"
  (interactive)
  (insert-folding-keyword-according-to-major-mode t)
  )


(defun folding-mode-additional-keys ()
  "folding-mode-additional-keys"
  (define-key folding-mode-map [(control c)(f)(a)] 'insert-folding-start-keyword-according-to-major-mode)
  (define-key folding-mode-map [(control c)(f)(e)] 'insert-folding-end-keyword-according-to-major-mode)
  ;;딱히 넣을 곳이 없어서...
  (define-key folding-mode-map [(control c)(f)(tab)] 'folding-toggle-show-hide)
  (define-key folding-mode-map [(control c)(f)(control h)] 'describe-prefix-bindings)
  ;;이렇게 하면 customize-browse 에서 있는 원래키(C-c return C-q 등)가 안 먹힌다.
  ;;원래 있는 folding-prefix-key C-c RET 와 충돌하는 듯
  ;;(define-key folding-mode-map [(control c)(return)(tab)] 'folding-toggle-show-hide)
  )

(add-hook 'folding-mode-hook 'folding-mode-additional-keys)

;;(global-set-key [(control x)(F)] 'folding-mode)
;;이건 global로 해야 할 듯
;;(define-key folding-mode-map [(control c)(f)(return)] 'folding-mode)
;;(define-key folding-mode-map [(control c)(f)(escape)] 'folding-mode)

;;(global-set-key [(control A)] '(lambda () (interactive) (insert-folding-keyword) )  )
;;(global-set-key [(control E)] '(lambda () (interactive) (insert-folding-keyword t) )  )
;;(global-set-key [(control meta return)] 'folding-toggle-show-hide)
;;(global-set-key [(control c)(return)(tab)] 'folding-toggle-show-hide)

