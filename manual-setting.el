;;;;
;;;; manual setting - start
;;;;
(defconst linux-p (eq system-type 'gnu/linux) "리눅스이면 참")
(defconst mswin-p (eq system-type 'windows-nt) "MS윈도우이면 참")

;;;; == 기본 색상 및 위치 변경 ==
;; emacs 자체 customize에서 배경 및 글자색 변경하면 semantic-ia-complete-tip 글자가 안보이기 때문에 여기서 지정
(add-to-list 'initial-frame-alist '(foreground-color . "white"))
(add-to-list 'initial-frame-alist '(background-color . "black"))
;; default-frame과 구별위해 필요, 크기는 default-frame에서만 지정해도 됨
(add-to-list 'initial-frame-alist '(left . 80))
;;(add-to-list 'initial-frame-alist '(left . 25))
(add-to-list 'initial-frame-alist '(top . 30))

;;(add-to-list 'default-frame-alist '(left . 40))
;;(add-to-list 'default-frame-alist '(top . 40))
(when (and (= (display-pixel-width) 1280)(= (display-pixel-height) 1024)(>=  emacs-major-version 23))
  (add-to-list 'default-frame-alist '(width . 140)) ;;DejaVu Sans Mono 14
  ;; (add-to-list 'default-frame-alist '(width . 110)) ;;Liberation Mono 17
  (add-to-list 'default-frame-alist '(height . 50)) )

(when (and (= (display-pixel-width) 1024)(= (display-pixel-height) 768)(>=  emacs-major-version 23))
  ;; 이것이 없으면 그놈(1024x768)에서 여러 프로그램이 실행중 일때 default-frame-alist에서 설정한 크기 대로 안나옴
  (when linux-p
    (set-frame-width (selected-frame) 115)
    (set-frame-height (selected-frame) 34) )
  (add-to-list 'default-frame-alist '(width . 115))
  (add-to-list 'default-frame-alist '(height . 34)) )
;; 이렇게 하면 semantic-ia-complete-tip 글자가 안보인다. after-make-frame-functions로 옮김 
;;(add-to-list 'default-frame-alist '(foreground-color . "white"))
;;(add-to-list 'default-frame-alist '(background-color . "black"))


;;(add-to-list 'default-frame-alist '(font . "-B&H-LucidaTypewriter-normal-normal-normal-*-12-*-*-*-m-*-iso8859-1")
(cond ((and linux-p (>=  emacs-major-version 23))
       (add-to-list 'default-frame-alist
		    '(font . "-unknown-DejaVu Sans Mono-normal-normal-normal-*-14-*-*-*-m-0-iso8859-1")) )
      ;; '(font . "-unknown-Liberation Mono-normal-normal-normal-*-17-*-*-*-m-0-iso10646-1")) )
      ((and linux-p (<  emacs-major-version 23))
       (add-to-list 'default-frame-alist
		    ;;'(font . "-misc-dejavu sans mono-medium-r-normal--14-0-0-0-m-0-iso8859-1")) )
		    '(font . "-adobe-courier-medium-r-normal--14-0-0-0-m-0-iso8859-1")) )
      ( mswin-p
	(add-to-list 'default-frame-alist
		     '(font . "-outline-Courier New-normal-normal-normal-mono-14-*-*-*-c-*-iso8859-1")) )  ) 



;; == make-frame로 만들어진 frame의 modeline 색상 변경 및 위치 조정 == 
(defun change-face-and-modeline-color (newframe)
  (set-face-foreground 'default "white" newframe)
  (set-face-background 'default "black" newframe)
  (set-face-background 'modeline "DarkOrange4" newframe)

  (let ((xoffset (* (list-length (frame-list)) 20))
	(yoffset (if (evenp (list-length (frame-list))) 50 30)) )
    (set-frame-position newframe xoffset yoffset) )  )

(add-hook 'after-make-frame-functions 'change-face-and-modeline-color)


;;;; == 한글&한자 영역 다른 글꼴로 지정  ==
;; * 뭥미 햏 같은 글자도 글꼴이 이상하지 않고 제대로 나오고 한자 글꼴 깨지지 않음
;; 유니코드 사용가능한 23 이상 버전과 이하 버전 구분
(cond ((and linux-p (>=  emacs-major-version 23))
       ;;(set-fontset-font "fontset-default" 'hangul "-unknown-나눔고딕-normal-normal-normal-*-*-*-*-*-*-0-*-*")
       ;;(set-fontset-font "fontset-default" 'hangul "-unknown-나눔고딕코딩-bold-normal-normal-*-*-*-*-*-d-0-iso10646-1")
       ;;(set-fontset-font "fontset-default" 'han "-microsoft-네이버사전-bold-normal-normal-*-*-*-*-*-*-0-iso10646-1")

       (set-fontset-font "fontset-default" 'hangul '("나눔고딕" . "unicode-bmp"))
       (set-fontset-font "fontset-default" 'han '("네이버사전" . "unicode-bmp")) )
      ((and linux-p (<  emacs-major-version 23))
       (set-fontset-font "fontset-default" 'korean-ksc5601
			 "-microsoft-gulim-medium-r-normal--14-0-0-0-p-0-ksc5601.1987-0") )  )

;; 보류 필요성 못 느낌
;;(set-fontset-font "fontset-default" 'cjk-misc '("네이버사전" . "unicode-bmp"))
;;(set-fontset-font "fontset-default" 'kana '("네이버사전" . "unicode-bmp"))

;; 처음 넣을때 내가 확장한것 사용하지 않음.
;; Emace Code Browser 를 최초로 로드합니다.
;;(add-to-list 'load-path "~/.emacs.d/cedet-1.0/common")
;;(add-to-list 'load-path "~/.emacs.d/cedet-1.0/contrib")
;;(require 'cedet)

;;(add-to-list 'load-path "~/.emacs.d/ecb-2.40")
;;(require 'ecb)

;; start

;;;; == 확장 기능 ==
;;  잠시 주석.
;; (defun load-supports (arg)
;;   (interactive "p")
;;   (cond ((= arg 4)
;;          (nxhtml-supports) )
;;         ((= arg 16)
;;          (full-supports)(nxhtml-supports) )
;;         (t
;;          (full-supports) )  )   )

; (global-set-key [(control shift meta return)] 'load-supports)




;; * full 확장 기능 로드 (초기 로딩이 오래 걸리는 확장 기능은 필요할 때만 쓰기 위해)
;; (defvar full-supports-p nil)
;; (defun full-supports ()
;;   (interactive)
;;   (when (not full-supports-p)
;;     (message "full supports start")
;;     (setq full-supports-p t)
;;     (cedet-supports)
;;     (ecb-supports)
;;     (compile&debug)
;;     (message "full supports end") )  )

;; (add-hook 'c-mode-common-hook 'cedet-supports)
;; (add-hook 'c-mode-common-hook 'ecb-supports)
;; (add-hook 'c-mode-common-hook 'compile&debug)
;; (full-supports)

;; * Collection of Emacs Development Environment Tools
(defvar cedet-supports-p nil)
(defun cedet-supports () 
  (interactive)
  (when (not cedet-supports-p)
    (setq cedet-supports-p t)
    (load "~/.emacs.d/cedet-supports/cedet-init")
    (semantic-reload-current-file-for-hook)
    (message "cedet-supports loaded") )  )


;; * Emacs Code Browser
(defvar ecb-supports-p nil)
(defun ecb-supports () 
  (interactive)
  (when (not ecb-supports-p)
    (setq ecb-supports-p t)
    (load "~/.emacs.d/ecb-supports/ecb-init")
    (message "ecb-supports loaded") )  )


;;




;; * 각 언어에서 유용하게 쓸 수 있는 확장 기능
(load "~/.emacs.d/language/language-init")

;; * C++ 언어에서 유용하게 쓸 수 있는 확장 기능
(load "~/.emacs.d/language-c++/language-c++-init")

;; * Lisp 언어 관련
(load "~/.emacs.d/language-lisp/language-lisp-init")

;;;;;;;;;;;;;;;;;;;;;;
;; * nXhtml&Mumamo

;; TODO : nxhtml-supports를 호출 하면 정상적으로 작동하지 않아 아래와 같이 사용하도록 수정함.
;; 고쳐야 하는데 이거원....

;;(defvar nxhtml-supports-p nil)
;;  (defun nxhtml-supports ()
;;  (interactive)
;;  (when (and linux-p (not nxhtml-supports-p))
;;  (setq nxhtml-supports-p t)
(setq ad-redefinition-action 'discard)
(setq rng-validate-up-to-date-end 0)

;; 느려서 주석.
; (load "~/.emacs.d/nxhtml/autostart.el")
; (custom-set-faces '(mumamo-background-chunk-major ((((class color) (min-colors 88) (background dark)) nil))))
; (custom-set-faces '(mumamo-background-chunk-submode ((((class color) (min-colors 88) (background dark)) (:background "grey1
;;0")))))

; 느려서 주석.
;; (defun mumamo-post-command-for-fontify-buffer ()
;;   (if mumamo-multi-major-mode
;;       (mumamo-fontify-buffer) )  )
;; (add-hook 'post-command-hook 'mumamo-post-command-for-fontify-buffer)
; 느려서 주석 끝.

;; nxhtml에 들어있는 기본 javascript를 덮어쓰기 위해
; 느려서 주석.
; (load "~/.emacs.d/language-javascript/javascript-init")

;;  )
;;)  
;; End nXhtml & Mumamo
;;;;;;;;;;;;;;;;;;;;;;;

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

;; * compile&debug 관련
;;(load "~/.emacs.d/compile&debug/compile&debug-init")
(defvar compile&debug-p nil)
(defun compile&debug () 
  (interactive)
  (when (not compile&debug-p)
    (setq compile&debug-p t)
    (load "~/.emacs.d/compile&debug/compile&debug-init")
    (message "compile&debug loaded") )  )

;; * tag 관련
(load "~/.emacs.d/_personal-plugins_/tags-snippets")
;; 태그 자동완성 관련 바인딩
(global-set-key [(meta return)] 'senator-complete-symbol)
(global-set-key [(meta shift return)] 'complete-symbol)
(global-set-key [(control meta return)] 'ebrowse-tags-complete-symbol)

;; * 각종 확장 기능들
(load "~/.emacs.d/_extensions_/extensions-init")


;; * 폴딩 - ({ } 기준으로 폴딩 됨)
(add-hook 'c-mode-common-hook 'hs-minor-mode)

;; hs-minor-mode(hide/show) 기본 키 바인딩 바꿈
(load "~/.emacs.d/_personal-plugins_/hs-minor-mode-rebinding-keys")

;; 관련 키 바인딩
(global-set-key [(control c)(h)(return)] 'hs-minor-mode)

;; * 폴딩 - hs-minor-mode 와 약간 다르게 폴딩 키워드 기준으로 폴딩 됨 ( c 언어와 비숫한 부류는 필요없을 듯)
;; (if (fboundp 'folding-mode)
;;   (add-hook 'c-mode-common-hook 'folding-mode) )
;; prefix 키 바인딩이 C-c @ 에서 C-c 로 변화됨, 키 바인딩을 새로하기 때문에 필요 없음
;;(setq folding-default-keys-function;;
;;        'folding-bind-backward-compatible-keys)

;; major 모드에 맞게 폴딩 키워드 집어넣기
;; (load "~/.emacs.d/_personal-plugins_/insert-folding-keyword-according-to-major-mode")

;; 폴딩 관련 바인딩
(global-set-key [(control c)(f)(return)] 'folding-mode)


;; * 괄호 짝 맞추는 기능 vi %명령과 같음 
(load "~/.emacs.d/_personal-plugins_/match-parenthesis")


;; * 현재 파일 다시 읽는 기능 (set-language-environment 에서 언어설정 바꾸면 필요)
(load "~/.emacs.d/_personal-plugins_/refresh-file")


;; * .emacs 설정파일 다시 로드 할수 있는 기능
(load "~/.emacs.d/_personal-plugins_/reload-dotemacs")


;; * 윈도우 높이 조절을 전체 프레임크기의 1/10 크기로 다룸
;; 막 만든 함수 주의
(load "~/.emacs.d/_personal-plugins_/resize-window-by-step")

;; * 커서위치 단어를 naver dic 이나 gtkmm reference에서 찾기, 커서위치 elisp 관련 함수 변수 찾기 키바인딩
(load "~/.emacs.d/_personal-plugins_/search-internet-and-help")


;; * grep-find and grep snippets
(load "~/.emacs.d/_personal-plugins_/grep-find-snippets")
(load "~/.emacs.d/_personal-plugins_/grep-snippets")
;; grep-find 가 가끔 xargs를 사용 안하는 경우가 생겨서...
(if linux-p
    (setq-default grep-find-use-xargs 'gnu) )


;; * 경고음이 시도때도 없이 나오는 것 방지
(load "~/.emacs.d/_personal-plugins_/ring-bell-function")


;; * 행끝에 공백이 있으면 표시해줌
(load "~/.emacs.d/_personal-plugins_/whitespace-snippets")


;; * align-and-tabify
(load "~/.emacs.d/_personal-plugins_/align-snippets")


;; * scroll-one-line-at-a-time
(load "~/.emacs.d/_personal-plugins_/scroll-snippets")


;; * find-file-snippets
(load "~/.emacs.d/_personal-plugins_/find-file-snippets")

;; * vs 기본 indent,tab 스타일 관련
(load "~/.emacs.d/_personal-plugins_/vs-style")


;; * 기타 (indent-tabs-mode-toggle-switch, tabify-before-save)
(load "~/.emacs.d/_personal-plugins_/etc-snippets")


;; * 컬러 테마 관련
(load "~/.emacs.d/_personal-plugins_/color-theme-snippets")


;; * 스트립트 언어 shebang 넣기
(load "~/.emacs.d/_personal-plugins_/insert-shebang-keyword-according-to-major-mode")


;; * file local variables 넣기
(load "~/.emacs.d/_personal-plugins_/insert-file-local-variables")


;; * 날짜 넣기
(load "~/.emacs.d/_personal-plugins_/insert-standard-date")


;; * Test 중
(load "~/.emacs.d/_personal-plugins_/shell-other-window")


;; * 내가 원하는 글자 크기로 토글
(load "~/.emacs.d/_personal-plugins_/text-scale-snippets")

;; * newline-and-indent-snippets
(load "~/.emacs.d/_personal-plugins_/newline-and-indent-snippets")


;; * tabbar-mode (test 중)
(load "~/.emacs.d/_personal-plugins_/tabbar-snippets")
;; tabbar-mode 관련 바인딩
(global-set-key [(control +)] 'tabbar-mode)
(global-set-key [(control c)(=)(return)] 'tabbar-mode)


;; * Doxymacs
;; doxymacs가 설치 안 되어 있는데 doxymacs를 호출하면 semantic 자동완성도 먹통되어 버리기 때문에 fboundp로 검사 후 적용
(when (fboundp 'doxymacs-mode)
  (add-hook 'c-mode-common-hook 'doxymacs-mode)
  (add-hook 'c-mode-common-hook 'doxymacs-font-lock) )
;; http://doxymacs.sourceforge.net/ 에 나온 방법
;; add-hook으로 해도 작동되는데...??? 왜 이렇게 했을까?
;;(defun my-doxymacs-font-lock-hook ()
;;    (if (or (eq major-mode 'c-mode) (eq major-mode 'c++-mode))
;;    (doxymacs-font-lock)))
;;(add-hook 'font-lock-mode-hook 'my-doxymacs-font-lock-hook)
;; doxymacs 관련 바인딩
;; (global-set-key [(control c)(d)(return)] 'doxymacs-mode)


;; * psvn 활성화
;; (if (fboundp 'svn-status)
;;     (require 'psvn) )

;; * ispell&flyspell이 작동되려면 필요하다.
(setq ispell-dictionary "english")


;; * MS윈도우용(nsi 스트립트, vs 연동, nsiw32-simple-print)
(if mswin-p
    (load "~/.emacs.d/ms-win/ms-win-init") )

;;;; == 기타 편의 설정 ==
;; * ido-mode 활동
;;(ido-mode t)


;; * yes 대신 y만 입력하도록
(fset 'yes-or-no-p 'y-or-n-p)


;; * 윈도우를 "meta - 화살표키"로 돌아다니기
(windmove-default-keybindings 'meta)


;; * 탭대신 공백으로 넣기
;;(setq-default indent-tabs-mode nil)


;; * 스크롤 한 줄씩 되게 하기 
(setq scroll-conservatively 10000)

;; * delete-selection-mode 활성화
(delete-selection-mode 1)


;; * ~로 끝나는 백업 파일 만들지 않기
;; (setq make-backup-files nil) 


;; * desktop-save-mode
;; 아직 필요성이 없음
;;(desktop-save-mode 1)
;; Customization follows below
;;(setq history-length 250)
;;(add-to-list 'desktop-globals-to-save 'file-name-history)


;; * shell 모드에서 제어 문자 나오는 것 방지
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)


;;;; == 키바인딩 ==
;; * 코딩 시스템 관련 키바인딩
(load "~/.emacs.d/_personal-plugins_/coding-system")

;; * ido-mode 토글
(global-set-key [(control x)(tab)] 'ido-mode)

;; * redraw-display
(global-set-key [(control x)(control ?2)] 'redraw-display)


;; * tabify & untabify
(global-set-key [(control meta ?\')] 'tabify)
(global-set-key [(control meta ?\;)] 'untabify)

(when linux-p
  ;; ~/.Xresources 에서 기본 한글 입력기(나비)를 불능으로 만들어서 한영키도 emacs 자체 한글 입력기를 쓰도록
  (global-set-key [(Hangul)] 'toggle-input-method)
  ;; ~/.Xresources 에서 기본 한글 입력기(나비)를 불능으로 만들어서 한자키도 emacs 자체 한자 입력기를 쓰도록(F9 와 같음)
  (global-set-key [(Hangul_Hanja)] 'hangul-to-hanja-conversion) )

;; *프레임관련 키 바인딩
(global-set-key [(control shift ?\  )(?\  )] 'other-frame)
(global-set-key [(control shift ?\  )(control shift ?\  )] 'other-frame)
(global-set-key [(control shift ?\  )(return)] 'make-frame)
(global-set-key [(control shift ?\  )(?0)] 'delete-frame) 
(global-set-key [(control shift ?\  )(k)] 'delete-frame)  
(global-set-key [(control shift ?\  )(escape)] 'delete-frame)
(global-set-key [(control shift ?\  )(tab)] 'raise-frame)

;; * 다른 윈도우로 전환
(global-set-key [(control tab)] 'other-window)
(if linux-p
    (global-set-key [(control shift iso-lefttab)] '(lambda () (interactive) (other-window -1)))
  (global-set-key [(control shift tab)] '(lambda () (interactive) (other-window -1))) )


;; * 버퍼 메뉴보기
;; list-buffers (C-x C-b) 보다 낫다.
(global-set-key [(control x)(meta b)] 'buffer-menu)


;; * 버퍼 끝으로 보내기
(global-set-key [(control &)] 'bury-buffer)
(global-set-key [(control $)] 'bury-buffer)


;; * 다른 버퍼로 전환
;; tabbar-mode 활성화 시키고 테스트해 보면 왜 )( 뒤바꾸었는지 알수있다. 
;; (global-set-key [(control ?\()] 'next-buffer)
;; (global-set-key [(control ?\))] 'previous-buffer)
(global-set-key [(control x)(control tab)] 'next-buffer)
(if linux-p
    (global-set-key [(control x)(control shift iso-lefttab)] 'previous-buffer)
  (global-set-key [(control x)(control shift tab)] 'previous-buffer) )


;; * 현재 편집중인 버퍼의 전체 파일 경로를 미니버퍼에 보여준다.
(global-set-key [(meta shift ?\  )] '(lambda () (interactive)
				       (message (concat buffer-file-name 
							" [" (symbol-name buffer-file-coding-system) "]" "\n"
							"indent-tabs-mode: " (symbol-name indent-tabs-mode) "; "
							"tab-width: " (number-to-string tab-width) "; "
							(if c-indentation-style
							    (concat "c-indentation-style: " c-indentation-style ";"))) )  )   )


;; * eshell or shell            
(global-set-key [(control !)] 'shell)
(global-set-key [(control meta !)] 'eshell)
;;(global-set-key [(control !)] 'shell)

;; * compile 단축키
(global-set-key [(control *)] 'compile)

;; * 변환없이 파일 읽음
(global-set-key [(control x)(control meta f)] 'find-file-literally)

;; 예 hello.hh와 hello.cc 간 전환위해
(global-set-key [(control x)(control F)] 'ff-find-other-file)
;;(global-set-key [(control c)(F)] 'ff-find-other-file) 

;; * 커서위치의 파일 열기 (vim "gf"와 비슷한 것)
(global-set-key [(control x)(meta f)] 'find-file-at-point)


;; * bar cursor mode 토글
(global-set-key [(control |)] 'bar-cursor-mode)


;; * ediff-mode
(global-set-key [(control {)] 'ediff)


;; * 버퍼 동시에 스크롤 하기
(global-set-key [(control })] 'scroll-all-mode)
(global-set-key [(control c)(?\])(return)] 'scroll-all-mode)

;; * 자동 줄 바꿈(wordrap) 토글
(global-set-key [(control x)(control ?\\)] 'toggle-truncate-lines)

;; * hexa 모드
(global-set-key [(control c)(control X)] 'hexl-mode)
(global-set-key [(control c)(X)(return)] 'hexl-mode)


;; * whitespace-mode 관련 바인딩
(global-set-key [(control c)(w)(return)] 'whitespace-mode)


;; * linum-mode
;; setnu-mode 도 있으나 별로...
(global-set-key [(control c)(n)(return)] 'linum-mode)


;; * 윈도우 크기 조정 (1)
(global-set-key [(control shift up)] 'shrink-window)
(global-set-key [(control shift down)] 'enlarge-window)
(global-set-key [(control shift left)] 'shrink-window-horizontally)
(global-set-key [(control shift right)] 'enlarge-window-horizontally)

;; * 윈도우 크기 조정 (2)
(global-set-key [(control P)] 'shrink-window)
(global-set-key [(control N)] 'enlarge-window)
(global-set-key [(control B)] 'shrink-window-horizontally)
(global-set-key [(control F)] 'enlarge-window-horizontally)

;; 주의! - scroll up == page down,  scroll left == right page
;; * 윈도우 스크롤 (1)
(global-set-key [(control c)(control up)] 'scroll-down)
(global-set-key [(control c)(control down)] 'scroll-up)
(global-set-key [(control c)(control left)] 'scroll-right)
(global-set-key [(control c)(control right)] 'scroll-left)

;; * 윈도우 스크롤 (2)
(global-set-key [(control c)(control n)] 'scroll-up)
(global-set-key [(control c)(control p)] 'scroll-down)
(global-set-key [(control c)(control f)] 'scroll-left)
(global-set-key [(control c)(control b)] 'scroll-right)

;; * 윈도우 스크롤 (3)
(global-set-key [(control >)] 'scroll-left)
(global-set-key [(control <)] 'scroll-right)


;; * Clipboard 이용 Cut Copy Paste (1)
;; Caps Lock 과 Ctrl 을 바꾸었다면 clipboard-kill-region은 오른쪽 Shift를 눌러야 한다.
(global-set-key [(control X)] 'clipboard-kill-region)
(global-set-key [(control C)] 'clipboard-kill-ring-save)
(global-set-key [(control V)] 'clipboard-yank)

;; * Clipboard 이용 Cut Copy Paste (2) - Emacs 친화적 키 바인딩
(global-set-key [(control c)(control w)] 'clipboard-kill-region)
(global-set-key [(control c)(meta w)] 'clipboard-kill-ring-save)
(global-set-key [(control c)(control y)] 'clipboard-yank)

;;;;
;;;;manual setting - end
;;;;
