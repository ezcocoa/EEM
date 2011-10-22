;;;; made by http://kldp.org/minipage/primewizard

(defvar shebang-alist '((sh-mode "#!/usr/bin/env sh" "#!/bin/sh")
			(shell-script-mode "#!/usr/bin/env sh" "#!/bin/sh")
			(perl-mode "#!/usr/bin/env perl" "#!/usr/bin/perl")
			(cperl-mode "#!/usr/bin/env perl" "#!/usr/bin/perl")
			(python-mode "#!/usr/bin/env python" "#!/usr/bin/python")))

(defun insert-shebang-keyword-according-to-major-mode ()
  (interactive)
  (let ((temp-shebang shebang-alist)
	element)

    (while temp-shebang
      (setq element (car temp-shebang))

      (if (string= major-mode (car element))
	  (insert (cadr element)) )

      (setq temp-shebang (cdr temp-shebang)) )  )   )

(global-set-key [(control c)(?#)] 'insert-shebang-keyword-according-to-major-mode)