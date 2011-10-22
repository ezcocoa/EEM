;; 출처 : http://www.emacswiki.org/emacs/ColorTheme
;; 출처 : http://wiki.kldp.org/wiki.php/EmacsColorTheme
(when (locate-library "color-theme")
  (require 'color-theme)

  ;; ;; 어두운 계열
  ;; (setq my-color-themes (list 'color-theme-arjen
  ;; 			    'color-theme-billw
  ;; 			    'color-theme-clarity
  ;; 			    'color-theme-dark-laptop
  ;; 			    'color-theme-taylor))

  ;; ;; 블루 계열
  ;; (setq my-color-themes (list 'color-theme-blue-mood
  ;; 			    'color-theme-resolve
  ;; 			    'color-theme-dark-blue
  ;; 			    'color-theme-dark-blue2
  ;; 			    'color-theme-deep-blue))

  ;; 그린 계열
  (setq my-color-themes (list 'color-theme-gnome2
			      'color-theme-subtle-hacker
			      'color-theme-classic
			      'color-theme-kingsajz
			      'color-theme-shaman
			      'color-theme-robin-hood))

  ;; ;; 베이지&기타 계열
  ;; (setq my-color-themes (list 'color-theme-wheat
  ;; 			    'color-theme-gray30))

  ;; ;; 전체 컬러 테마
  ;; (setq my-color-themes color-themes)


  (defun car-theme () ;figure out if we need car or caar
    (interactive)
    (cond
     ((consp (car theme-current))
      (caar theme-current))
     (t
      (car theme-current))))

  (defun my-theme-set-default () ; Set the first row
    (interactive)
    (setq theme-current my-color-themes)
    (funcall (car-theme)))

  (defun my-describe-theme () ; Show the current theme
    (interactive)
    (message "%s" (car-theme)))

					; Set the next theme (fixed by Chris Webber - tanks)
  (defun my-theme-cycle ()
    (interactive)
    (setq theme-current (cdr theme-current))
    (if (null theme-current)
	(setq theme-current my-color-themes)
      (funcall (car-theme)))
    (message "%s" (car-theme)))

  (setq theme-current my-color-themes)
  (setq color-theme-is-global nil) ; Initialization
  ;; (my-theme-set-default)

  (global-set-key [(f12)] 'my-theme-cycle)
  (global-set-key [(meta shift f12)] 'my-describe-theme)



  (defun select-random-color-theme ()
    "Select random color theme"
    (interactive)
    (funcall (car (nth (random (length color-themes)) color-themes))))

  ;; (global-set-key [(control shift meta x)] 'select-random-color-theme)


  ;; (defun set-frame-color-theme (frame)
  ;;   (select-frame frame)
  ;;   (select-random-color-theme))

  ;; (add-hook 'after-make-frame-functrions 'set-frame-color-theme)
  )