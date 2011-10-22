;;;; == 헤더파일 클래스 멤버함수 소스파일에 편하게 넣기 ==
(add-to-list 'load-path "~/.emacs.d/language-c++/expand-member-functions/")
(autoload 'expand-member-functions "member-functions" "Expand C++ member function declarations" t)
(add-hook 'c++-mode-hook (lambda () (local-set-key [(control c)(m)] 'expand-member-functions)))




;; * c++-symbol-at-point
(load "~/.emacs.d/language-c++/c++-symbol-at-point")
