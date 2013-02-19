;; Regular shortcuts ==========================================================

;; evil -----------------------------------------------------------------------
;;Make evil-mode up/down operate in screen lines instead of logical lines
(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)
(define-key evil-insert-state-map (kbd "ESC") 'evil-normal-state)
;; close parens ---------------------------------------------------------------
(global-set-key (kbd ")") 'close-open-paren)
;; auto-complete --------------------------------------------------------------
(global-set-key (kbd "M-SPC") 'ac-fuzzy-complete)
; (define-key ac-complete-mode-map (kbd "RET") 'ac-complete)
;; mu4e -----------------------------------------------------------------------
(define-key mu4e-main-mode-map (kbd "q") 'mu4e-quit-session)

;; evil-leader shortcuts ======================================================

;; M-x ------------------------------------------------------------------------
(evil-leader/set-key ":" 'smex)
;; ace-jump -------------------------------------------------------------------
(evil-leader/set-key "SPC" 'ace-jump-mode)
;; switch window by number ----------------------------------------------------
(evil-leader/set-key "0" 'select-window-0)
(evil-leader/set-key "1" 'select-window-1)
(evil-leader/set-key "2" 'select-window-2)
(evil-leader/set-key "3" 'select-window-3)
(evil-leader/set-key "4" 'select-window-4)
(evil-leader/set-key "5" 'select-window-5)
(evil-leader/set-key "6" 'select-window-6)
(evil-leader/set-key "7" 'select-window-7)
(evil-leader/set-key "8" 'select-window-8)
(evil-leader/set-key "9" 'select-window-9)
;; applications ---------------------------------------------------------------
(evil-leader/set-key "ae" 'erc-start-or-switch)
(evil-leader/set-key "am" 'mu4e-up-to-date-status)
(evil-leader/set-key "as" 'eshell)
(evil-leader/set-key "at" 'twit)
;; buffers --------------------------------------------------------------------
(evil-leader/set-key "bd" 'delete-current-buffer-file)
(evil-leader/set-key "bk" 'ido-kill-buffer)
(evil-leader/set-key "bK" 'kill-other-buffers)
(evil-leader/set-key "bn" 'switch-to-next-buffer)
(evil-leader/set-key "bp" 'switch-to-prev-buffer)
(evil-leader/set-key "br" 'rename-current-buffer-file)
(evil-leader/set-key "bs" 'ido-switch-buffer)
;; errors ---------------------------------------------------------------------
(evil-leader/set-key "en" 'next-error)
(evil-leader/set-key "ep" 'previous-error)
;; files ----------------------------------------------------------------------
(evil-leader/set-key "fo" 'ido-find-file)
(evil-leader/set-key "fp" 'find-file-in-project)
(evil-leader/set-key "fs" 'sr-speedbar-toggle-and-select)
;; fold-this ------------------------------------------------------------------
(evil-leader/set-key "fj" 'fold-this)
(evil-leader/set-key "FJ" 'fold-this-all)
(evil-leader/set-key "fk" 'fold-this-unfold-at-point)
(evil-leader/set-key "FK" 'fold-this-unfold-all)
;; git ------------------------------------------------------------------------
(evil-leader/set-key "gs" 'magit-status)
;; auto-highlight-symbol ------------------------------------------------------
(evil-leader/set-key "he" 'ahs-edit-mode)
(evil-leader/set-key "hh" 'auto-highlight-symbol-mode)
(evil-leader/set-key "hn" 'ahs-forward)
(evil-leader/set-key "hp" 'ahs-backward)
;; move-text ------------------------------------------------------------------
(evil-leader/set-key "mj" 'move-text-down)
(evil-leader/set-key "mk" 'move-text-up)
(evil-leader/set-key "mtc" 'transpose-chars)
(evil-leader/set-key "mtl" 'transpose-lines)
(evil-leader/set-key "mtw" 'transpose-words)
;; narrow & widen -------------------------------------------------------------
(evil-leader/set-key "nr" 'narrow-to-region)
(evil-leader/set-key "np" 'narrow-to-page)
(evil-leader/set-key "nf" 'narrow-to-defun)
(evil-leader/set-key "nw" 'widen)
;; projectile -----------------------------------------------------------------
(evil-leader/set-key "pb" 'projectile-switch-to-buffer)
(evil-leader/set-key "pC" 'projectile-invalidate-cache)
(evil-leader/set-key "pd" 'projectile-dired)
(evil-leader/set-key "pf" 'projectile-recentf)
(evil-leader/set-key "pF" 'projectile-find-file)
(evil-leader/set-key "pk" 'projectile-kill-buffers)
(evil-leader/set-key "pg" 'projectile-grep)
(evil-leader/set-key "po" 'projectile-multi-occur)
(evil-leader/set-key "pr" 'projectile-replace)
;; toggle ---------------------------------------------------------------------
(evil-leader/set-key "ta" 'auto-complete-mode)
(evil-leader/set-key "tf" 'fringe-mode)
(evil-leader/set-key "th" 'auto-highlight-symbol-mode)
(evil-leader/set-key "tn" 'global-linum-mode)
(evil-leader/set-key "tw" 'toggle-maximize-buffer)
;; selection ------------------------------------------------------------------
(evil-leader/set-key "v" 'er/expand-region)
;; window ---------------------------------------------------------------------
(evil-leader/set-key "wb" 'evenly-split-window-right)
(evil-leader/set-key "wc" 'delete-window)
(evil-leader/set-key "wd" 'toggle-current-window-dedication)
(evil-leader/set-key "wf" 'toggle-maximize-buffer)
(evil-leader/set-key "wr" 'rotate-windows)
(evil-leader/set-key "wv" 'evenly-split-window-below)
(evil-leader/set-key "ww" 'other-window)
;; centered cursor ------------------------------------------------------------
(evil-leader/set-key "zz" 'global-centered-cursor-mode)

(provide 'my-keybindings)
