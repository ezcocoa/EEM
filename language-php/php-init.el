;;;; made by http://kldp.org/minipage/primewizard

;; * PHP(Mumamo) 모드에 필요한 약간의 코드
(load "~/.emacs.d/language-php/php-snippets")

;; * auto complete 를 이용한 자동완성
;; http://github.com/ashizawa/autocompletion-php-functions/tree/master
(load "~/.emacs.d/language-php/autocompletion-php-functions")

(define-key php-mode-map [(control return)] 'ac-start)
(define-key php-mode-map [(shift return)] 'php-complete-function)