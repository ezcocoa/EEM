;; (return)으로 하면 C-x RET r 등등 C-x RET 를 prefix로 하는 명령이 안먹힌다.
;; 그래서 (?\r)로 바꾸었다.

(global-set-key [(control x)(?\r)(f5)] '(lambda () (interactive) (revert-buffer-with-coding-system 'dos) )  )
(global-set-key [(control x)(?\r)(f6)] '(lambda () (interactive) (revert-buffer-with-coding-system 'unix) )  )
(global-set-key [(control x)(?\r)(f8)] '(lambda () (interactive) (revert-buffer-with-coding-system 'undecided) )  )


(global-set-key [(control x)(?\r)(f9)] '(lambda () (interactive) (revert-buffer-with-coding-system 'korean-iso-8bit-unix) )  ) 
(global-set-key [(control x)(?\r)(f10)] '(lambda () (interactive) (revert-buffer-with-coding-system 'utf-8-unix) )  )
(global-set-key [(control x)(?\r)(f12)] '(lambda () (interactive) (revert-buffer-with-coding-system 'undecided-unix) )  )

(global-set-key [(control x)(?\r)(shift f9)] '(lambda () (interactive) (revert-buffer-with-coding-system 'korean-iso-8bit-dos) )  )
(global-set-key [(control x)(?\r)(shift f10)] '(lambda () (interactive) (revert-buffer-with-coding-system 'utf-8-dos) )  )
(global-set-key [(control x)(?\r)(shift f12)] '(lambda () (interactive) (revert-buffer-with-coding-system 'undecided-dos) )  )




(global-set-key [(control x)(?\r)(control f5)] '(lambda () (interactive) (set-buffer-file-coding-system 'dos) )  )
(global-set-key [(control x)(?\r)(control f6)] '(lambda () (interactive) (set-buffer-file-coding-system 'unix) )  )
(global-set-key [(control x)(?\r)(control f8)] '(lambda () (interactive) (set-buffer-file-coding-system 'undecided) )  )


(global-set-key [(control x)(?\r)(control f9)] '(lambda () (interactive) (set-buffer-file-coding-system 'korean-iso-8bit-unix) )  )
(global-set-key [(control x)(?\r)(control f10)] '(lambda () (interactive) (set-buffer-file-coding-system 'utf-8-unix) )  )
(global-set-key [(control x)(?\r)(control f12)] '(lambda () (interactive) (set-buffer-file-coding-system 'undecided-unix) )  )

(global-set-key [(control x)(?\r)(control shift f9)] '(lambda () (interactive) (set-buffer-file-coding-system 'korean-iso-8bit-dos) )  )
(global-set-key [(control x)(?\r)(control shift f10)] '(lambda () (interactive) (set-buffer-file-coding-system 'utf-8-dos) )  )
(global-set-key [(control x)(?\r)(control shift f12)] '(lambda () (interactive) (set-buffer-file-coding-system 'undecided-dos) )  )




(global-set-key [(control x)(?\r)(meta shift f8)] '(lambda () (interactive) (set-language-environment "English") )  )
(global-set-key [(control x)(?\r)(meta shift f9)] '(lambda () (interactive) (set-language-environment "Korean") )  )
(global-set-key [(control x)(?\r)(meta shift f10)] '(lambda () (interactive) (set-language-environment "UTF-8") )  )




;; 이것은 조금 build 키 바인딩하고 섞인다.
;; (global-set-key [(shift f7)] '(lambda () (interactive) (revert-buffer-with-coding-system 'dos) )  )
;; (global-set-key [(shift f8)] '(lambda () (interactive) (revert-buffer-with-coding-system 'unix) )  )

;; (global-set-key [(shift f9)] '(lambda () (interactive) (revert-buffer-with-coding-system 'korean-iso-8bit-dos) )  )
;; (global-set-key [(shift f10)] '(lambda () (interactive) (revert-buffer-with-coding-system 'korean-iso-8bit-unix) )  ) 
;; (global-set-key [(shift f11)] '(lambda () (interactive) (revert-buffer-with-coding-system 'utf-8-dos) )  ) 
;; (global-set-key [(shift f12)] '(lambda () (interactive) (revert-buffer-with-coding-system 'utf-8-unix) )  )




;; (global-set-key [(control shift f7)] '(lambda () (interactive) (set-buffer-file-coding-system 'dos) )  )
;; (global-set-key [(control shift f8)] '(lambda () (interactive) (set-buffer-file-coding-system 'unix) )  )

;; (global-set-key [(control shift f9)] '(lambda () (interactive) (set-buffer-file-coding-system 'korean-iso-8bit-dos) )  )
;; (global-set-key [(control shift f10)] '(lambda () (interactive) (set-buffer-file-coding-system 'korean-iso-8bit-unix) )  ) 
;; (global-set-key [(control shift f11)] '(lambda () (interactive) (set-buffer-file-coding-system 'utf-8-dos) )  ) 
;; (global-set-key [(control shift f12)] '(lambda () (interactive) (set-buffer-file-coding-system 'utf-8-unix) )  )




;; (global-set-key [(meta shift f8)] '(lambda () (interactive) (set-language-environment "English") )  )
;; (global-set-key [(meta shift f9)] '(lambda () (interactive) (set-language-environment "Korean") )  )
;; (global-set-key [(meta shift f10)] '(lambda () (interactive) (set-language-environment "Korean") )  )
;; (global-set-key [(meta shift f11)] '(lambda () (interactive) (set-language-environment "UTF-8") )  )
;; (global-set-key [(meta shift f12)] '(lambda () (interactive) (set-language-environment "UTF-8") )  )
