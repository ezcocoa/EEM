;;;; 출처 : http://hermian.tistory.com/195

;; .emacs 설정 파일 다시 로드 하는 기능
(defun reload-dotemacs ()
  "Reload .emacs"
  (interactive)
  (load-file "~/.emacs"))


;; .emacs 설정파일 다시 읽음
(global-set-key [(control x)(~)] 'reload-dotemacs)
