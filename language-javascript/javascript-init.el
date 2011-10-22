;;;; == 자바 스크립트 모드 ==
;; http://www.emacswiki.org/cgi-bin/wiki/JavaScriptMode
(add-to-list 'load-path "~/.emacs.d/language-javascript/")
(add-to-list 'auto-mode-alist '("\\.js\\'" . javascript-mode))
(autoload 'javascript-mode "javascript" nil t)