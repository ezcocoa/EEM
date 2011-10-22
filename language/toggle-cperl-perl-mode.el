;;;; 여기 참고해서 만듦 : http://www.emacswiki.org/cgi-bin/wiki/PhpMode

;; cperl perl-mode 전환
(defun toggle-cperl-perl-mode ()
  (interactive)
  "Toggle mode between CPerl & Perl modes"
  (cond ((string= mode-name "CPerl") (perl-mode))
        ((string= mode-name "Perl") (cperl-mode))))

(defun cperl-mode-additional-keys ()
  "Key bindings to add to `cperl-mode'."
  (define-key cperl-mode-map [(control c)(control tab)] 'toggle-cperl-perl-mode)
  )

(defun perl-mode-additional-keys ()
  "Key bindings to add to `perl-mode'."
  (define-key perl-mode-map [(control c)(control tab)] 'toggle-cperl-perl-mode)
  )


(add-hook 'cperl-mode-hook 'cperl-mode-additional-keys)
(add-hook 'perl-mode-hook 'perl-mode-additional-keys)

