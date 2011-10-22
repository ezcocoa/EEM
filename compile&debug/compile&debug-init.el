;; * 컴파일
;; smart compile, mode compile
(load "~/.emacs.d/compile&debug/compile-snippets")

(global-set-key [(control c)(control C)] 'compile-easily)
(global-set-key [(control c)(C)(return)] 'compile-easily)
;; (global-set-key [(control c)(control C)] 'compile)
;; (global-set-key [(control c)(C)(return)] 'compile)
;; (global-set-key [(control c)(control C)] 'compile-according-to-flymake-mode)
;; (global-set-key [(control c)(C)(return)] 'compile-according-to-flymake-mode)



;; * 디버깅
;; major 모드에 맞게 gdb,perldb,pdb를 알아서 실행하는 함수
(load "~/.emacs.d/compile&debug/gdb-according-to-major-mode")

;; gdb 모드의 추가 키바인딩 및 약간의 코드
(load "~/.emacs.d/compile&debug/gdb-snippets")

(global-set-key [(control c)(control D)] 'gdb-according-to-major-mode-in-new-frame)
(global-set-key [(control c)(D)(return)] 'gdb-according-to-major-mode-in-new-frame)
;;(global-set-key [(control c)(control D)] 'gdb-according-to-major-mode)
;;(global-set-key [(control c)(D)(return)] 'gdb-according-to-major-mode)
;;(global-set-key [(control c)(control D)] 'gdb)
;;(global-set-key [(control c)(D)(return)] 'gdb)
(global-set-key [(control c)(D)(tab)] 'gdb-restore-windows)
;;(global-set-key [(control x)(control D)] 'gdb-restore-windows)