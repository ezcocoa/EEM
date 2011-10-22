;; * yet another snippet extension for Emacs.
;; 애들은 가~ 애들은 가~ 일단 한번 써봐~! 진짜 물건
;; 방법 1)
;; (add-to-list 'load-path "~/.emacs.d/language/yasnippet-bundle/")
;; (require 'yasnippet-bundle)

;; 방법 2)
(add-to-list 'load-path "~/.emacs.d/language/yasnippet/")
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory "~/.emacs.d/language/yasnippet/snippets")

;; tabify가 필요한 경우는 if 문 자동완성때 tab-width 4이면 탭대신 공백이 들어 가는 경우가 있음
(add-hook 'yas/after-exit-snippet-hook
          '(lambda ()
	     (if indent-tabs-mode
		 (tabify yas/snippet-beg
			 yas/snippet-end))
	     (indent-region yas/snippet-beg
			    yas/snippet-end)))




;; * 소스코드 파일에 따라서 헤더 파일 모드 결정하기
(load "~/.emacs.d/language/choose-header-file-mode")




;; * ede 가 c-set-style 단축키를 prefix 키로 사용하고 있어서 다른 것으로 지정
(load "~/.emacs.d/language/c-set-style")




;; * C++ C 모드간 전환
;;가끔 확장자 h를 C,C++ 둘다에서 쓰는 경우가 생기기 때문에
(load "~/.emacs.d/language/toggle-c++-c-mode")


;; * PHP HTML 모드간 전환
(load "~/.emacs.d/language/toggle-php-html-mode")


;; * CPerl Perl 모드간 전환
(load "~/.emacs.d/language/toggle-cperl-perl-mode")




;; * makefile에 flymake-mode check-syntax 넣기
(load "~/.emacs.d/language/flymake-mode")




;;;; == cscope ==
;; 아직 필요성이 없음
;;(require 'xcscope)




;;;; == ebrowse ==
;; 아직 필요성이 없음
;;(global-set-key [f5] 'ebrowse-tree-mode)
;;(add-to-list 'auto-mode-alist '("BROWSE\\.*" . ebrowse-tree-mode))




;;;; == 자동으로 { } ; 다음에 리턴(newline)되게 ==
;; 보류 필요성 못 느낌, 보통 c,c++ 모드에서 C-c C-a 로 키 바인딩되어 있다. 
;; * c-toggle-auto-state 대신 이것으로
;;(add-hook 'c-mode-common-hook 'c-toggle-auto-newline)