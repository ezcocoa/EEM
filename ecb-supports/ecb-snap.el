;; (require 'ecb-autoloads) 사용하면 folding-mode와 ecb가 충돌함
;; (require 'ecb) 사용해야함
(add-to-list 'load-path
                   "~/.emacs.d/ecb-snap/ecb-2.40")

;; * If you want to load the complete ECB at (X)Emacs-loadtime (Advantage: All
;; ECB-options available after loading ECB). Disadvantage: Increasing
;; loadtime):

(require 'ecb)

;; * If you want to load the ECB first after starting it by `ecb-activate'
;; (Advantage: Fast loading. Disadvantage: ECB- and semantic-options first
;; available after starting ECB):

;; (require 'ecb-autoloads)

;; * This loads all available autoloads (e.g. `ecb-activate', `ecb-minor-mode',
;;`ecb-show-help' or `ecb-byte-compile') of current ECB.
