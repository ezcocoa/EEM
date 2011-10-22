(add-to-list 'auto-mode-alist '("\\.\\([pP][Llm][xX]*\\|al\\)\\'" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl5" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("miniperl" . cperl-mode))




(defun cperl-set-coding-style ()
  (setq cperl-indent-level 8)
  (setq cperl-continued-statement-offset 0)
  (setq cperl-extra-newline-before-brace t)
  (setq cperl-extra-newline-before-brace-multiline t)
  (setq cperl-merge-trailing-else nil))

(add-hook 'cperl-mode-hook 'cperl-set-coding-style)




;; * perl-completion 설정
(add-to-list 'load-path "~/.emacs.d/_extensions_/anything")

(add-to-list 'load-path "~/.emacs.d/language-perl")
(require 'perl-completion)

(add-hook 'cperl-mode-hook (lambda() (perl-completion-mode t)))




;; * auto-complete 설정
(load "~/.emacs.d/language-perl/auto-complete-perl")




;; plcmp-mode-map 가 cperl-mode-map을 덮어 쓰기 때문에
(define-key plcmp-mode-map [(control return)] 'ac-start)
(define-key plcmp-mode-map [(shift return)] 'plcmp-cmd-smart-complete)
;;(define-key cperl-mode-map [(control return)] 'ac-start)
;;(define-key cperl-mode-map [(shift return)] 'plcmp-cmd-smart-complete)

(define-key plcmp-mode-map [(control c)(meta h)] 'plcmp-cmd-show-doc-at-point)
;;(define-key plcmp-mode-map [(control x)(meta h)] 'plcmp-cmd-show-doc-at-point)




;; 출처 : http://www.emacswiki.org/emacs/CPerlMode#toc9
(defun perl-module-path (module-name)
  (let* ((file-name
          (concat (replace-regexp-in-string "::" "/" module-name)
                  ".pm"))
         (command-line
          (concat "perl -M'"
                  module-name
                  "' -e'print $INC{q{"
                  file-name
                  "}}'"))
         (path (shell-command-to-string command-line))
         (cant-locate (string-match "^Can't locate " path)))
    (if cant-locate
        nil
      path)))

(defun find-perl-module (module-name)
  (interactive "sPerl module name: ")
  (let ((path (perl-module-path module-name)))
    (if path
        (find-file path)
      (error "Module '%s' not found" module-name))))