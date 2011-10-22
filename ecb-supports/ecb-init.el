;; color theme에 문제가 있어 ecb cvs snap 버전으로 (ecb-deactivate 하고 테마 적용해야 함)
(load "~/.emacs.d/ecb-supports/ecb-snap")
;;(load-file "~/.emacs.d/ecb-2.32.el")
;; ecb-snippets
(load "~/.emacs.d/ecb-supports/ecb-snippets")




;;;; == ECB 기능 ==
;;(ecb-minor-mode)
;;(ecb-activate)
;; 아래와 같이 하면 semantic 자동완성이 안된다.
;;(add-hook 'c-mode-common-hook 'ecb-activate)
;;(add-hook 'c-mode-common-hook 'ecb-minor-mode)




;; * ECB 관련 바인딩
(global-set-key [(control c)(?\  )(return)] 'ecb-minor-mode)
(global-set-key [(control c)(shift ?\  )] 'ecb-minor-mode)
;;(global-set-key [(control c)(?\  )(return)] 'ecb-activate)
(global-set-key [(control c)(?\  )(escape)] 'ecb-deactivate)
(global-set-key [(control c)(?\  )(?0)] 'ecb-deactivate)
(global-set-key [(control c)(?\  )(?\  )] 'ecb-move-between-ecb-and-edit-window)
;;(global-set-key [(control c)(?\  )(?\  )] 'ecb-goto-window-directories)
;;(global-set-key [(control c)(?\  )(backspace)] 'ecb-goto-window-edit-last)
;;(global-set-key [(control c)(?\  )(backspace)] 'ecb-goto-window-edit1)

;;(global-set-key [(control c)(?\  )(tab)] 'ecb-redraw-layout)
(global-set-key [(control c)(?\  )(tab)] '(lambda (arg) 
					    (interactive "p")
					    (when (= arg 4)
					      (ecb-rebuild-methods-buffer)
					      (ecb-update-directories-buffer))
					    (ecb-redraw-layout)) )

(global-set-key [(control c)(control ?\  )] 'ecb-cycle-maximized-ecb-buffers)
(global-set-key [(control c)(control shift ?\  )] 'ecb-toggle-layout)
;; (global-set-key [(control x)(control shift ?\  )] 'ecb-activate)
;; (global-set-key [(control x)(control ?\  )(return)] 'ecb-activate)
;; (global-set-key [(control x)(control ?\  )(escape)] 'ecb-deactivate)
;; (global-set-key [(control x)(control ?\  )(?0)] 'ecb-deactivate)
;; (global-set-key [(control x)(control ?\  )(?\  )] 'ecb-goto-window-directories)
;; (global-set-key [(control x)(control ?\  )(backspace)] 'ecb-goto-window-edit-last)
;; (global-set-key [(control x)(control ?\  )(tab)] 'ecb-redraw-layout)

(global-set-key [(control c)(?\  )(shift ?\  )] 'ecb-toggle-ecb-windows)
(global-set-key [(control c)(?\  )(w)] 'ecb-toggle-ecb-windows)
(global-set-key [(control c)(?\  )(t)] 'ecb-toggle-ecb-windows)

(global-set-key [(control c)(?\  )(u)] 'ecb-update-directories-buffer)


(define-key ecb-mode-map [(control c)(control v)] 'scroll-up-analyse-window)
(define-key ecb-mode-map [(control c)(meta v)] 'scroll-down-analyse-window)