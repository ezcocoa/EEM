(add-to-list 'load-path "~/.emacs.d/auto-complete")
(require 'auto-complete)

;; Use C-n/C-p to select candidates
(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)


(defun ac-perl ()
  (interactive)
  (auto-complete-mode t)
  (set (make-local-variable 'ac-sources)
       (append ac-sources '(ac-source-perl-completion)
               ))
  (set (make-local-variable 'ac-auto-start) nil)
  ;; (make-variable-buffer-local 'ac-sources)
  ;; (setq ac-sources
  ;;       '(ac-source-perl-completion))
  )

(add-hook 'cperl-mode-hook 'ac-perl)


;; 이것이 있어야 키워드를 완성해 감에 따라 자동으로 자동완성 리스트가 갱신된다.
(defadvice ac-start (before advice-turn-on-auto-start activate)
  (set (make-local-variable 'ac-auto-start) t))
(defadvice ac-cleanup (after advice-turn-off-auto-start activate)
  (set (make-local-variable 'ac-auto-start) nil))