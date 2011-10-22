;;;; made by http://kldp.org/minipage/primewizard

(when (and linux-p
	   (if (locate-library "ipython") t (progn (message "need ipython") nil))
	   (if (locate-library "pymacs") t (progn (message "need pymacs") nil)))

  ;; * ipython 설정
  (require 'ipython)
  (setq py-python-command-args '( "-colors" "Linux")) 
  (load "~/.emacs.d/language-python/ipython-overriden-functions")


  ;; * ropemacs 설정 - 순서 주의! rope 가 pycomplete 보다 먼저 와야 한다.
  (require 'pymacs)
  (add-to-list 'pymacs-load-path "~/.emacs.d/language-python/rope-hg")
  (add-to-list 'pymacs-load-path "~/.emacs.d/language-python/ropemacs-hg")
  ;; 이상하게 rope 로드후 아래를 추가하면 pycomplete가 안 된다.
  (add-to-list 'pymacs-load-path "~/.emacs.d/language-python/pycomplete")

  (setq ropemacs-enable-shortcuts nil)
  (pymacs-load "ropemacs" "rope-")


  ;; * pycomplete 설정 - 순서 주의!
  ;;(require 'pymacs)
  ;;(add-to-list 'pymacs-load-path "~/.emacs.d/language-python/pycomplete")
  (add-to-list 'load-path "~/.emacs.d/language-python/pycomplete")

  (require 'pycomplete)

  ;; * auto-complete 설정
  (load "~/.emacs.d/language-python/auto-complete-python")

  ;; 키바인딩 설정
  (define-key py-mode-map [(control return)] 'ryan-python-tab)

  (define-key py-mode-map [(shift return)] 'rope-code-assist)
  ;; (define-key py-mode-map [(control shift return)] 'rope-code-assist)
  (define-key py-mode-map [(control shift return)] 'py-complete)

  (define-key py-mode-map [(meta return)] 'rope-lucky-assist)
  ;; (define-key py-mode-map [(meta /)] 'dabbrev-expand) 
  ;; (define-key py-mode-map "\M-/" 'rope-code-assist)
  (define-key py-mode-map "\C-cg" 'rope-goto-definition)
  (define-key py-mode-map "\C-cd" 'rope-show-doc)
  (define-key py-mode-map "\C-cf" 'rope-find-occurrences)
  (define-key py-mode-map "\M-?" 'rope-lucky-assist) 

;; 이상하게 예전에 만든 .ropeproject 디렉토리가 있는 곳에서 rope-code-assist 를 시도하면 에러가 나는데
;; .ropeproject 디렉토리를 지워주면 또 정상적으로 되어서 만듦

  (defun rope-delete-dot-ropeproject-directory ()
    (interactive)
    (let ((path-factor (split-string (concat (file-name-directory buffer-file-name) ".ropeproject") " "))
          (escaped-path ""))
      (while path-factor
        (setq escaped-path (concat escaped-path (car path-factor)))
        (if (> (length path-factor) 1)
            (setq escaped-path (concat escaped-path "\\ ")) )
        (setq path-factor (cdr path-factor)) )
      (shell-command  (concat "rm -rf " escaped-path))
      (message (concat escaped-path " deleted")) )  )

  (define-key py-mode-map [(control c)(control R)] 'rope-delete-dot-ropeproject-directory)


  (defun insert-utf-8-encoding-string ()
    (interactive)
    (insert "# -*- coding: utf-8 -*-") )

  (define-key py-mode-map [(control c)(?8)] 'insert-utf-8-encoding-string)


  (defun insert-python-beginning-string ()
    (interactive)
    (insert "#!/usr/bin/env python") )

  (define-key py-mode-map [(control c)(?1)] 'insert-python-beginning-string)

)
