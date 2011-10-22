;;;; made by http://kldp.org/minipage/primewizard

(defun toggle-show-trailing-whitespace ()
  (interactive)
  (if show-trailing-whitespace
      (set-variable 'show-trailing-whitespace nil)
    (set-variable 'show-trailing-whitespace t)) )

(global-set-key [(control x)(meta ?\\)] 'toggle-show-trailing-whitespace)
