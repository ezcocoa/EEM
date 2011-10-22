;; ede 가 C-c . 을 prefix 로 사용하기 때문에 c-set-style 키바인딩을 다시함
(add-hook 'c-mode-hook '(lambda () (define-key c-mode-map [(control c)(control .)] 'c-set-style)))
(add-hook 'c++-mode-hook '(lambda () (define-key c++-mode-map [(control c)(control .)] 'c-set-style)))
