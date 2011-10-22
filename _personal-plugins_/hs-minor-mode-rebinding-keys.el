;; 출처 : http://search.cpan.org/src/YEWENBIN/Emacs-PDE-0.2.16/lisp/doc/QuickStartEn.html

(require 'hideshow)
(define-key hs-minor-mode-map "\C-ch"
  (let ((map (lookup-key hs-minor-mode-map "\C-c@")))
    ;; C-h is help to remind me key binding
    (define-key map "\C-h" 'describe-prefix-bindings)
    (define-key map "\C-q" 'hs-toggle-hiding)
    (define-key map "\C-x" 'hs-hide-block)
    (define-key map "\C-s" 'hs-show-block)
    (define-key map "\C-\M-x" 'hs-hide-all)
    (define-key map "\C-\M-s" 'hs-show-all)
    map))


(defun hs-minor-mode-additional-keys ()
  "hs-minor-mode-additional-keys"
  (define-key hs-minor-mode-map [(control meta ?\])] 'hs-toggle-hiding)
  (define-key hs-minor-mode-map [(control meta {)] 'hs-hide-block)
  (define-key hs-minor-mode-map [(control meta })] 'hs-show-block)
  (define-key hs-minor-mode-map [(control meta <)] 'hs-hide-all)
  (define-key hs-minor-mode-map [(control meta >)] 'hs-show-all)
  )

(add-hook 'hs-minor-mode-hook 'hs-minor-mode-additional-keys)