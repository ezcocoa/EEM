 (setenv "MITSCHEME_LIBRARY_PATH"  "/Applications/mit-scheme.app/Contents/Resources")

;;(let ((buffer (url-retrieve-synchronously
;;		        "http://www.tromey.com/elpa/package-install.el")))
;;(save-excursion
;;  (set-buffer buffer)
;;  (goto-char (point-min))
;;  (re-search-forward "^$" nil 'move)
;;  (eval-region (point) (point-max))
;;  (kill-buffer (current-buffer))))

;; Initial 셋팅 
(setq initial-scratch-message nil) 
(setq inhibit-splash-screen t) 
(set-terminal-coding-system 'utf-8) 
(set-keyboard-coding-system 'utf-8) 
(prefer-coding-system 'utf-8) 
(setq ring-bell-function 'ignore) 
(setq make-backup-files nil) 
(setq font-lock-verbose nil) 
(add-to-list 'load-path "~/.emacs.d/") 
(add-to-list 'exec-path "/opt/local/bin") 
(add-to-list 'exec-path "~/bin") 
(set-face-font 'default "-apple-monaco-medium-r-normal--12-*-*-*-*-*- 
fontset-monaco") 
(set-face-font 'default (font-spec :family "monaco" :size 12.0)) 
(set-fontset-font nil 'korean-ksc5601 (font-spec :family 
"applegothic" :lang "ko" :size 12.0)) 
(setq initial-major-mode 'lisp-interaction-mode) 
(setq linum-format "%3d") 
(global-set-key (kbd "S-SPC") 'self-insert-command) 
(global-set-key (kbd "C-z") nil)      ; Dock 으로 접힘 방지 코드. 
(global-set-key (kbd "\C-x\C-z") nil) ; 위와 마찬가지. 
(global-set-key (kbd "C-\\") 'dabbrev-expand) 
(global-set-key (kbd "C-t") 'slime-selector) 
(global-set-key (kbd "RET") 'newline-and-indent) 
(global-set-key (kbd "C-<right>") 'forward-word) 
(global-set-key (kbd "C-<left>") 'backward-word) 
(global-set-key (kbd "C-l") (lambda () (interactive) (recenter 15))) 
(global-set-key (kbd "C-M-u") 'mark-sexp) 
(global-set-key (kbd "S-s-<return>") 'ns-toggle-fullscreen) 
(global-set-key (kbd "s-1") 'delete-other-windows) 
(global-set-key (kbd "s-2") 'split-window-vertically) 
(global-set-key (kbd "s-3") 'split-window-horizontally) 
(global-set-key (kbd "M-,") 'pop-tag-mark) 
(global-set-key (kbd "s-e") 'eval-last-sexp) 
(setq auto-mode-alist (cons '("\\.m$" . objc-mode) 
                            auto-mode-alist)) 
(setq auto-mode-alist (cons '("\\.s$" . asm-mode) 
                            auto-mode-alist)) 
(setq kill-buffer-query-functions 
      (remove 'process-kill-buffer-query-function 
              kill-buffer-query-functions)) 


(custom-set-variables
 
 ;; custom-set-variables was added by Custom. 
 ;; If you edit it by hand, you could mess it up, so be careful. 
 ;; Your init file should contain only one such instance. 
 ;; If there is more than one, they won't work right. 
 '(default-frame-alist
    (quote (
	    (right-fringe . 0)
	    (left-fringe . 1) 
	    (fringe)
	    (internal-border-width . 0)
	    (cursor-type . box)
	    (menu-bar-lines . 1)
	    (background-color . "black")
	    (background-mode . dark) 
	    (border-color . "Light Grey")
	    (cursor-color . "maroon")
	    (foreground-color . "Light Grey")
	    (mouse-color . "Light Grey")
	    (alpha 85 50) 
	    (top . 0)
	    (left . 200)
	    (width . 120)
	    (height . 38))))

 '(global-font-lock-mode t) 
 '(global-linum-mode t) 
 '(gud-gdb-command-name "gdb --annotate=1") 
 '(iswitchb-mode t) 
 '(large-file-warning-threshold nil) 
 '(ns-tool-bar-display-mode nil t) 
 '(ns-tool-bar-size-mode nil t) 
 '(safe-local-variable-values
   (quote (
	   (package . asdf)
	   (Package . LOOP)
	   (Syntax . Common-Lisp)
	   (Lowercase . T)
	   (Package . loop) 
(Syntax . Common-lisp) (Package WALKER LISP 1000) (Base . 10) 
(Syntax . COMMON-LISP) (Package . CL-USER) (Package X86 :use CL) 
(Package . CCL) (Syntax . ANSI-Common-Lisp) (Package . LUI) 
(Package . :LUI) (package . lui)))) 
 '(scroll-bar-mode nil) 
 '(show-paren-mode t) 
 '(tool-bar-mode nil) 
 '(transient-mark-mode t) 
 '(visual-line-mode nil t))

(custom-set-faces 
 ;; custom-set-faces was added by Custom. 
 ;; If you edit it by hand, you could mess it up, so be careful. 
 ;; Your init file should contain only one such instance. 
 ;; If there is more than one, they won't work right. 
 '(ac-etags-candidate-face ((t (:foreground "black" :background 
"lightgray")))) 
 '(ac-etags-selection-face ((t (:foreground "white" :background 
"steelblue")))) 
 '(comint-highlight-prompt ((t (:foreground "darkgoldenrod")))) 
 '(mode-line-buffer-id ((t (:background "grey30" :foreground 
"white"))))) 

;; GDB 가 안되서 GUD-GDB 
;(require 'gud) 
;(defun gdb (command-line) 
;  (interactive (list (gud-query-cmdline 'gud-gdb))) 
;  (gud-gdb command-line)) 

;; paredit mode 
;(require 'paredit) 
;(mapc (lambda (mode) 
;        (let ((hook (intern (concat (symbol-name mode) 
;                                    "-mode-hook")))) 
;          (add-hook hook (lambda () (paredit-mode +1))))) 
;      '(emacs-lisp lisp inferior-lisp clojure)) 


;; == Auto Complete Mode ==
;;
(add-to-list 'load-path "~/.emacs.d/auto-complete/") 
(require 'auto-complete)
(global-auto-complete-mode t)
(when (require 'auto-complete nil t)
   (global-auto-complete-mode t)
   (set-face-background 'ac-selection-face "steelblue")
   (set-face-background 'ac-menu-face "skyblue")
   (define-key ac-complete-mode-map "\t" 'ac-expand)
   (define-key ac-complete-mode-map "\r" 'ac-complete)
   (define-key ac-complete-mode-map "\C-\M-n" 'ac-next)
   (define-key ac-complete-mode-map "\C-\M-p" 'ac-previous)
   (setq ac-auto-start t)
   (setq ac-sources '(ac-source-yasnippet ac-source-abbrev ac-source-words-in-buffer))
 
   (add-to-list 'ac-modes 'eshell-mode)
 
   (add-hook 'emacs-lisp-mode-hook
             (lambda ()
               (make-local-variable 'ac-sources)
               (setq ac-sources '(ac-source-yasnippet ac-source-abbrev ac-source-words-in-buffer ac-source-symbols))))
 
   (add-hook 'eshell-mode-hook
             (lambda ()
               (make-local-variable 'ac-sources)
               (setq ac-sources '(ac-source-yasnippet ac-source-abbrev ac-source-files-in-current-dir ac-source-words-in-buffer)))))
 
(defconst c++-keywords 
      (sort 
       (list "and" "bool" "compl" "do" "export" "goto" "namespace" "or_eq" "return"
             "struct" "try" "using" "xor" "and_eq" "break" "const" "double" "extern"
             "if" "new" "private" "short" "switch" "typedef" "virtual" "xor_eq" "asm"
             "case" "const_cast" "dynamic_cast" "false" "inline" "not" "protected" 
             "signed" "template" "typeid" "void" "auto" "catch" "continue" "else" 
             "float" "int" "not_eq" "public" "sizeof" "this" "typename" "volatile"
             "bitand" "char" "default" "enum" "for" "long" "operator" "register"
             "static" "throw" "union" "wchar_t" "bitor" "class" "delete" "explicit"
             "friend" "mutable" "or" "reinterpret_cast" "static_cast" "true" 
             "unsigned" "while" ) #'(lambda (a b) (> (length a) (length b)))))
(defvar ac-source-c++
      '((candidates
         . (lambda ()
             (all-completions ac-target c++-keywords))))
      "Source for c++ keywords.")
(add-hook 'c++-mode-hook
              (lambda ()
                (make-local-variable 'ac-sources)
                (setq ac-sources '(ac-source-c++))))

;; (defun ac-source-dabbrev (abbrev) 
;;   (interactive) 
;;   (dabbrev--reset-global-variables) 
;;   (let ((dabbrev-check-all-buffers t)) 
;;     (sort (dabbrev--find-all-expansions abbrev t) #'string<))) 
;; (defvar ac-source-dabbrev-words 
;;   '((candidates 
;;      . (lambda () (all-completions ac-target 
;;                                    (ac-source-dabbrev ac- 
;; target))))) 
;;   "Get all the completions using dabbrev") 

;;; 난 Cedet 이 싫어요 
;; Cedet Mode 
;; (setq srecode-map-save-file "~/.emacs.d/.srecode/srecode-map") 
;; (load-file "~/.emacs.d/cedet-1.0/common/cedet.el") 
;; (setq semanticdb-default-save-directory "~/.emacs.d/.semanticdb") 
;; (global-ede-mode 1) 
;; (semantic-load-enable-code-helpers) 
;; (global-srecode-minor-mode 1) 
;; (global-semantic-idle-summary-mode -1)

;; Yasnippet 
;(require 'yasnippet) 
;(setq yas/root-directory "~/.emacs.d/snippets") 
;(yas/load-directory yas/root-directory) 
;(define-key paredit-mode-map (kbd "C-<right>") 'forward-word) 
;(define-key paredit-mode-map (kbd "C-<left>") 'backward-word) 
;(define-key paredit-mode-map (kbd "M-<left>") 'paredit-backward-barf- 
;sexp) 
;(define-key paredit-mode-map (kbd "M-<right>") 'paredit-forward-slurp- 
;sexp) 
;;; C mode 
;(require 'xcscope) 
;(require 'xcscope+) 
;(setq cscope-do-not-update-database t)  ; cscope 데이터 베이스를 수동으로 갱신. 
                                        ; 이 경우 데이터베이스를 새로 갱신하기 전까진 소스코드의 
                                        ; 변경사항을 반영하지 못함 
;(cscope-set-initial-directory "/usr/include/") 
;(defun c-mode-fix () 
;  (local-set-key (kbd "\C-c\C-k") 'compile) 
;  (yas/minor-mode)) 
;(add-hook 'c-mode-hook          'c-mode-fix) 
;(add-hook 'c++-mode-hook         'c-mode-fix) 
;(add-hook 'c-mode-hook 
;          (lambda () 
;            (let ((tagfile "/usr/include/TAGS")) 
;              (when (file-readable-p tagfile) 
;                (visit-tags-table tagfile))) 
;             (make-local-variable 'ac-sources) 
;             (setq ac-sources '( 
                               ;ac-source-semantic 
                               ;ac-source-semantic-raw 
                               ;ac-source-dabbrev-words 
;                               ac-source-etags 
;                               ac-source-filename 
;                               ac-source-words-in-all-buffer 
;                               ac-source-dictionary)))) 
;; (add-hook 'c-mode-hook 
;;        (lambda () 
;;          (define-key c-mode-map (kbd "M-TAB") (lambda () 
;;                                                 (interactive) 
;;                                                 (semantic-idle-summary-idle-function))))) 

;; slime mode 
(add-to-list 'load-path "~/.emacs.d/elpa/slime-repl-20100404/")
(add-to-list 'load-path "~/.emacs.d/elpa/slime-20100404/")
;(add-to-list 'load-path "~/.emacs.d/clojure/swank-clojure") 
;(add-to-list 'load-path "~/.emacs.d/clojure/clojure-mode") 
(require 'slime)
(eval-after-load "slime"
  '(progn (slime-setup '(slime-repl))))

(slime-setup)

;; 
;; added by hojun baek
;; clisp mode
(setq inferior-lisp-program "/opt/local/bin/clisp")
(slime-setup)
;; end clisp mode

;(require 'slime-set) 
;(require 'clojure-mode) 
;(require 'assoc) 
;(require 'swank-clojure) 
;(add-hook 'swank-clojure-project-hook 
;          (lambda () 
;            (slime-autodoc-unload))) 
;(defun start-clojure () 
;  (interactive) 
;  (swank-clojure-project "~/cl/clojure-lisp")) 
;(setq slime-net-coding-system 'utf-8-unix) 
;(slime-setup '(slime-fancy slime-banner slime-xref-browser slime-c-p- 
;c)) 
;(setq slime-startup-animation nil) 

(setq common-lisp-hyperspec-root "file://~/.emacs.d/clisp/doc/HyperSpec/" 
      slime-complete-symbol-function 'slime-fuzzy-complete-symbol 
      browse-url-browser-function 'w3m-browse-url) 
;(setq auto-mode-alist (cons '("\\.asd$" . lisp-mode) 
;                            auto-mode-alist)) 
;(setq slime-lisp-implementations 
;      `((ccl ("ccl")) 
;        (ccl32 ("~/cl/ccl/dx86cl")) 
;        (sbcl ("sbcl")) 
;        (clisp ("clisp")) 
;        (ecl ("ecl")) 
;        (abcl ("abcl")) 
;        (acl ("~/cl/allegrocl/alisp")) 
        ;; Clojure 와 slime-autodoc 이 충돌, (slime-autodoc-unload) 로 해결 
        ;; load 하고 싶다면 (slime-autodoc-init) 실행 
        ;; (clojure ("~/bin/clojure") :init (lambda (file encoding) 
        ;;                                 (slime-autodoc-unload) 
        ;;                                 (swank-clojure-init file encoding))) 
;        (cmucl ("~/cl/cmucl/bin/lisp")))) 
;(define-key slime-mode-map (kbd "s-e") 'slime-eval-last-expression) 
;(define-key slime-mode-map (kbd "TAB") 'slime-indent-and-complete- 
;symbol) 
;(define-key slime-mode-map (kbd "C-\\") 'dabbrev-expand) 
;(define-key slime-mode-map (kbd "M-TAB") 'slime-fuzzy-complete-symbol) 
;(define-key slime-repl-mode-map (kbd "M-TAB") 'slime-fuzzy-complete- 
;symbol) 
;(define-key slime-repl-mode-map (kbd "C-l") 'slime-repl-clear-buffer) 
;(add-hook 'slime-mode-hook '(lambda () (auto-complete-mode 1))) 
;(add-hook 'slime-connected-hook 'slime-redirect-inferior-output) 

;; ccl ide 와 slime 연결시 필요 
;;(load "~/.emacs.d/swank-ccl-ide") 
;;; W3M set 
;(add-to-list 'load-path "~/.emacs.d/w3m/") 
;(require 'w3m) 
;(define-key w3m-mode-map (kbd "<down>") 'next-line) 
;(define-key w3m-mode-map (kbd "<up>") 'previous-line) 
;(define-key w3m-mode-map (kbd "<right>") 'forward-char) 
;(define-key w3m-mode-map (kbd "<left>") 'backward-char) 

;;; Scheme 
;(defun scheme (scheme) 
;  (interactive "sWhat's Your Scheme? : ") 
;  (run-scheme (concat "~/bin/" scheme)) 
;  (define-key scheme-mode-map (kbd "s-e") 'scheme-send-last-sexp)) 
;;; for Racket 
;(setq auto-mode-alist (cons '("\\.rkt$" . scheme-mode) 
;                            auto-mode-alist)) 
;(defun scheme-pop-to-buffer () 
;  (interactive) 
;  (let ((scheme-buffer (get-buffer scheme-buffer))) 
;    (if scheme-buffer 
;        (pop-to-buffer scheme-buffer t) 
;      (princ 'scheme-not-running))) 
;  (values)) 
;(add-hook 'scheme-mode-hook 
;          (lambda () 
 ;           (local-set-key (kbd "\C-c\C-z")  'scheme-pop-to-buffer))) 
;;; Csound Set 
;(require 'csound) 
;(setq auto-mode-alist (cons '("\\.csd$" . csound-mode) 
;                            auto-mode-alist)) 
;(setq *csound-page-root* 
;      "/Users/byul/programming/C/Csound/csound-manual/") 

;;; HTMLizer 
;(require 'htmlize) 

;;; Shell Mode 
;; 일반 실행 디렉토리 링크 
;(setq-default ansi-color-names-vector 
;              ["red" "firebrick" "green" "steelblue" "blue" "magenta" "cyan" 
;"red" ] ) 
;(setq ansi-term-color-vector 
;      [unspecified "red" "firebrick" "green" "steelblue" "blue" 
;"magenta" "cyan" "red"]) 
;(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t) 
;(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on) 
;(add-hook 'shell-mode-hook 
;          '(lambda () 
;             (local-set-key (kbd "C-l") 
;                            (lambda () 
;                              (interactive) 
;                              (let ((inhibit-read-only t)) 
;                                (erase-buffer) 
;                                (comint-send-input) 
;                                (previous-line) 
;                                (kill-line)))))) 
;; ERC irc client 
;; (defun irc-start () 
;;   (interactive) 
;;   (erc :server "irc.freenode.net" :port "6667" 
;;        :nick "byulparan")) 
;; (setq erc-user-full-name "byulparan") 


;; Added by hojun
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Languages

;; * 각 언어에서 유용하게 쓸 수 있는 확장 기능
(load "~/.emacs.d/language/language-init")

;; * C++ 언어에서 유용하게 쓸 수 있는 확장 기능
(load "~/.emacs.d/language-c++/language-c++-init")

;; * Lisp 언어 관련
(load "~/.emacs.d/language-lisp/language-lisp-init")


;; * nXhtml&Mumamo
;; 20111017 잠시 주석.

(defvar nxhtml-supports-p nil)
(defun nxhtml-supports ()
  (interactive)
  (when (and linux-p (not nxhtml-supports-p))
    (setq nxhtml-supports-p t)
    (setq ad-redefinition-action 'discard)
    (setq rng-validate-up-to-date-end 0)
    (load "~/.emacs.d/nxhtml/autostart.el")
    (custom-set-faces '(mumamo-background-chunk-major ((((class color) (min-colors 88) (background dark)) nil))))
    (custom-set-faces '(mumamo-background-chunk-submode ((((class color) (min-colors 88) (background dark)) (:background "grey1
0")))))
    
    ;; (defun mumamo-post-command-for-fontify-buffer ()
    ;;   (if mumamo-multi-major-mode
    ;; 	  (mumamo-fontify-buffer) )  )

;;   (add-hook 'post-command-hook 'mumamo-post-command-for-fontify-buffer)

;;   ;; nxhtml에 들어있는 기본 javascript를 덮어쓰기 위해
  (load "~/.emacs.d/language-javascript/javascript-init")
   ))  

;; * python 관련 (ipython,ropemacs,pycomplete, etc)
(defvar language-python-p nil)
  (defun language-python () 
   (interactive)
   (when (and linux-p (not language-python-p))
      (setq language-python-p t)
      (load "~/.emacs.d/language-python/python-init")
      (ac-python)
      (message "language-python loaded") )  )
	    
(add-hook 'python-mode-hook 'language-python)


;; * php 관련
(defvar language-php-p nil)
(defun language-php ()
  (interactive)
  (when (not language-php-p)
     (setq language-php-p t)
     (load "~/.emacs.d/language-php/php-init")
     (message "language-php loaded") )  )

(add-hook 'php-mode-hook 'language-php)

;; * perl 관련
(defvar language-perl-p nil)
(defun language-perl () 
  (interactive)
  (when (not language-perl-p)
	(setq language-perl-p t)
	(load "~/.emacs.d/language-perl/perl-init")
	(cperl-mode)
    ;; (cond ((string= mode-name "Perl") (perl-mode))
    ;;       ((string= mode-name "CPerl") (cperl-mode)))
   (message "language-perl loaded") )  )
	    
(add-hook 'cperl-mode-hook 'language-perl)

;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

;;;; == 수동 설정 추가 ==
;; PHP 작업 할 때 아래 주석 풀어줘야함.
(load "~/.emacs.d/manual-setting")

;;;; == twitter client ==
;;
(load "~/.emacs.d/twittering-mode/twittering-mode.el") ;; twittering-mode 소스 경로
(require 'twittering-mode)
(setq twittering-username "") ;; Twitter ID
(setq twittering-password "") ;; 패스워드를 설정하지 않으면 prompt를 통해 물어보기 때문에 설정하지 않아도 상관 없음
(setq twittering-oauth-access-token-alist '(("oauth_token" . "")
					    ("oauth_token_secret" . "")
					    ("user_id" . "")
					    ("screen_name" . "")))
(setq twittering-account-authorization 'authorized)
(setq twittering-use-native-retweet t) ;; Twitter에서 제공하는 Retweet 방식 사용
(twittering-icon-mode t) ;; 기본으로 트윗 항목 앞에 프로필 이미지를 표시
(setq twittering-timer-interval 180) ;; 각 timeline을 새로 고치는 주기(단위는 초)


;; == Android 개발환경 IDE =
;; git repository : git clone git://github.com/remvee/android-mode.git
;;

(add-to-list 'load-path "~/.emacs.d/android-mode") 
(require 'android-mode)
(require 'android)
(setq android-mode-sdk-dir "/Android/android-sdk-mac_x86")

;; == Android 개발환경 plugins ==
;; JDEE는 기본적으로 CEDET을 필요로 함.

(add-to-list 'load-path "~/.emacs.d/cedet-cvs/common")
(add-to-list 'load-path "~/.emacs.d/cedet-cvs/contrib")
(require 'cedet)

;; == Android 개발환경 plugins ==
;; elib과 jdee의 path를 추가해줌.
;; jde를 불러줌

(add-to-list 'load-path "~/.emacs.d/elib-1.0")
(add-to-list 'load-path "~/.emacs.d/jdee-2.4.0.1/lisp")
(require 'jde)

;; == for Android ==
;; jde-mode-hook이 이상하게도 불려지지 않음.
;; 아래와 같이 강제로 불러줌
(setq jde-run-mode-hook t)

;; == for Android ==
;; jdk 버전을 조정함.

(setq 
 jde-sourcepath '( "/Users/crazia/work/android/project" )
 jde-db-option-connect-socket '(nil "28380")
 jde-jdk-registry (quote (
              ("1.5" . "/System/Library/Frameworks/JavaVM.framework/Versions/1.5/")
              ("1.6" . "/System/Library/Frameworks/JavaVM.framework/Versions/1.6/")
              )
             )
 jde-jdk `("1.6")
)

;; == for Android ==
;; cua-mode 끄기
;; \C-RET는 정말 편하게 쓸 수 있는 단축키 인데 cua-mode가 항상 점유하고 있으면서 바꿔지지 않는 문제로 아예 ㄲㅓ버림.
;; (cua-mode nil)


;; == jde complete function ==
;; 함수 자동완성 같은데 너무 느려서 사용안함.
;; (add-hook 'jde-mode-hook
;;          (lambda()
;;            (define-key jde-mode-map [(control return)] 'jde-complete)
;;        (define-key jde-mode-map [(meta return)] 'jde-complete-minibuf)
;;        (define-key jde-mode-map [(shift return)] 'jde-complete-in-line)))

;; == 선택 영역 움직이기 ==
;; 영역을 잡고 M-p or M-n으로 위치를 이동할 수 있다. 
(defun move-region (start end n)
  "Move the current region up or down by N lines."
  (interactive "r\np")
  (let ((line-text (delete-and-extract-region start end)))
    (forward-line n)
    (let ((start (point)))
      (insert line-text)
      (setq deactivate-mark nil)
      (set-mark start))))

(defun move-region-up (start end n)
  "Move the current line up by N lines."
  (interactive "r\np")
  (move-region start end (if (null n) -1 (- n))))

(defun move-region-down (start end n)
  "Move the current line down by N lines."
  (interactive "r\np")
  (move-region start end (if (null n) 1 n)))

(defun move-line-region-up (start end n)
  (interactive "r\np")
  (if (region-active-p) (move-region-up start end n) (move-line-up n)))

(defun move-line-region-down (start end n)
  (interactive "r\np")
  (if (region-active-p) (move-region-down start end n) (move-line-down n)))

(global-set-key (kbd "M-p") 'move-line-region-up)
(global-set-key (kbd "M-n") 'move-line-region-down)

;; == file refresh ==
;;
(defun refresh-file ()
  (interactive)
  (revert-buffer t t t)
  )
(global-set-key [f5] 'refresh-file)

;; == Alt키를 사용하지 않는 M-x
;; M-x를 Ctl-x m 으로 줄여서 사용.
;; not used by hojun.
;; (global-set-key "\C-x\C-m" 'execute-extended-command) 
;; (global-set-key "\C-c\C-m" 'execute-extended-command) 

;; == 활성화된 버퍼 닫기 ==
;;
(defun close-all-buffers () 
  (interactive) 
  (mapc 'kill-buffer (buffer-list)) 
  (cd "~/")) 

;; == 한가지의 버퍼를 제외한 모든 버퍼 닫기 ==
;;
(defun only-one-buffer () 
  (interactive) 
  (let ((current-buffer (current-buffer))) 
    (dolist (buffer (buffer-list)) 
      (unless (eql current-buffer buffer) 
        (kill-buffer buffer)))))

(shell)
