;;;; 여기 참고해서 만듦 : http://www.emacswiki.org/cgi-bin/wiki/PhpMode

;; c++ c-mode 전환
(defun toggle-c++-c-mode ()
  (interactive)
  "Toggle mode between C++ & C modes"
  (cond ((string= major-mode "c++-mode") (c-mode))
        ((string= major-mode "c-mode") (c++-mode))))

(defun c++-mode-additional-keys ()
  "Key bindings to add to `c++-mode'."
  (define-key c++-mode-map [(control c)(control tab)] 'toggle-c++-c-mode)
  )

(defun c-mode-additional-keys ()
  "Key bindings to add to `c-mode'."
  (define-key c-mode-map [(control c)(control tab)] 'toggle-c++-c-mode)
  )


(add-hook 'c++-mode-hook 'c++-mode-additional-keys)
(add-hook 'c-mode-hook 'c-mode-additional-keys)

