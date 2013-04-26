;; Regular shortcuts ==========================================================

;; evil -----------------------------------------------------------------------
;;Make evil-mode up/down operate in screen lines instead of logical lines
(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)
(define-key evil-insert-state-map (kbd "ESC") 'evil-normal-state)
;; insert blank lines ---------------------------------------------------------
(define-key evil-normal-state-map (kbd "M-j") 'evil-insert-line-below)
(define-key evil-normal-state-map (kbd "M-k") 'evil-insert-line-above)
;; close parens ---------------------------------------------------------------
(global-set-key (kbd ")") 'close-open-paren)
;; mu4e -----------------------------------------------------------------------
(define-key mu4e-main-mode-map (kbd "q") 'mu4e-quit-session)

;; evil-leader shortcuts ======================================================

;; M-x ------------------------------------------------------------------------
(evil-leader/set-key ":" 'execute-extended-command)
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
(evil-leader/set-key "ad" 'dired)
(evil-leader/set-key "ae" 'erc-start-or-switch)
(evil-leader/set-key "ag" 'magit-status)
(evil-leader/set-key "am" 'mu4e-up-to-date-status)
(evil-leader/set-key "ase" 'eshell)
(evil-leader/set-key "asi" 'shell)
(evil-leader/set-key "ast" 'multi-term)
(evil-leader/set-key "at" 'twit)
(evil-leader/set-key "au" 'undo-tree-visualize)
(evil-leader/set-key "ay" 'helm-c-yas-complete)
;; buffers --------------------------------------------------------------------
(evil-leader/set-key "bd" 'delete-current-buffer-file)
(evil-leader/set-key "bk" 'ido-kill-buffer)
(evil-leader/set-key "bK" 'kill-other-buffers)
(evil-leader/set-key "bmh" 'buf-move-left)
(evil-leader/set-key "bmj" 'buf-move-down)
(evil-leader/set-key "bmk" 'buf-move-up)
(evil-leader/set-key "bml" 'buf-move-right)
(evil-leader/set-key "bn" 'switch-to-next-buffer)
(evil-leader/set-key "bp" 'switch-to-prev-buffer)
(evil-leader/set-key "br" 'rename-current-buffer-file)
(evil-leader/set-key "bs" 'helm-mini)
;; errors ---------------------------------------------------------------------
(evil-leader/set-key "en" 'next-error)
(evil-leader/set-key "ep" 'previous-error)
;; find -----------------------------------------------------------------------
(evil-leader/set-key "ff" 'ido-find-file)
;; git ------------------------------------------------------------------------
(evil-leader/set-key "gs" 'magit-status)
;; auto-highlight-symbol ------------------------------------------------------
(evil-leader/set-key "he" 'ahs-edit-mode)
(evil-leader/set-key "hh" 'auto-highlight-symbol-mode)
(evil-leader/set-key "hn" 'ahs-forward)
(evil-leader/set-key "hp" 'ahs-backward)
;; Lisps ----------------------------------------------------------------------
(evil-leader/set-key "lB" 'paredit-backward-barf-sexp)
(evil-leader/set-key "lb" 'paredit-forward-barf-sexp)
(evil-leader/set-key "lc" 'paredit-convolute-sexp)
(evil-leader/set-key "ld" 'paredit-kill)
(evil-leader/set-key "lJ" 'paredit-join-sexps)
(evil-leader/set-key "l C-j" 'paredit-split-sexp)
(evil-leader/set-key "lj" 'paredit-splice-sexp-killing-forward)
(evil-leader/set-key "lk" 'paredit-splice-sexp-killing-backward)
(evil-leader/set-key "lr" 'paredit-raise-sexp)
(evil-leader/set-key "lS" 'paredit-backward-slurp-sexp)
(evil-leader/set-key "ls" 'paredit-forward-slurp-sexp)
(evil-leader/set-key "lw" 'paredit-wrap-round)
;; major modes ----------------------------------------------------------------
;; Erlang
(evil-leader/set-key "Mec" 'edts-who-calls)
(evil-leader/set-key "Med" 'edts-find-doc)
(evil-leader/set-key "Mef" 'edts-find-source-under-point)
(evil-leader/set-key "Meg" 'edts-find-global-function)
(evil-leader/set-key "Meh" 'edts-find-header-source)
(evil-leader/set-key "Mel" 'edts-find-local-function)
(evil-leader/set-key "Mem" 'edts-find-macro-source)
(evil-leader/set-key "Mer" 'edts-find-record-source)
(evil-leader/set-key "Mex" 'edts-refactor-extract-function)
;; Html
(evil-leader/set-key "C-<right>" 'tagedit-forward-slurp-tag)
(evil-leader/set-key "C-<left>" 'tagedit-forward-barf-tag)
(evil-leader/set-key "M-r" 'tagedit-raise-tag)
(evil-leader/set-key "C-k" 'tagedit-kill)
(evil-leader/set-key "s-k" 'tagedit-kill-attribute)
;; Python
(evil-leader/set-key "Mp1" 'nosetests-one)
(evil-leader/set-key "Mp!" 'nosetests-pdb-one)
(evil-leader/set-key "Mpa" 'nosetests-all)
(evil-leader/set-key "MpA" 'nosetests-pdb-all)
(evil-leader/set-key "Mpb" 'python-add-breakpoint)
(evil-leader/set-key "Mpd" 'pylookup-lookup)
(evil-leader/set-key "Mpf" 'jedi:goto-definition)
(evil-leader/set-key "Mpm" 'nosetests-module)
(evil-leader/set-key "MpM" 'nosetests-pdb-module)
;; narrow & widen -------------------------------------------------------------
(evil-leader/set-key "nr" 'narrow-to-region)
(evil-leader/set-key "np" 'narrow-to-page)
(evil-leader/set-key "nf" 'narrow-to-defun)
(evil-leader/set-key "nw" 'widen)
;; projectile -----------------------------------------------------------------
(evil-leader/set-key "pb" 'projectile-switch-to-buffer)
(evil-leader/set-key "pC" 'projectile-invalidate-cache)
(evil-leader/set-key "pd" 'projectile-dired)
(evil-leader/set-key "pf" 'helm-projectile)
(evil-leader/set-key "pF" 'projectile-find-file)
(evil-leader/set-key "pk" 'projectile-kill-buffers)
(evil-leader/set-key "pg" 'projectile-grep)
(evil-leader/set-key "po" 'projectile-multi-occur)
(evil-leader/set-key "pr" 'projectile-replace)
;; perforce -------------------------------------------------------------------
(evil-leader/set-key "p4a" 'p4-add)
(evil-leader/set-key "p4d" 'p4-delete)
(evil-leader/set-key "p4D" 'p4-describe)
(evil-leader/set-key "p4e" 'p4-edit)
(evil-leader/set-key "p4r" 'p4-revert)
;; quickrun -------------------------------------------------------------------
(evil-leader/set-key "qba" 'quickrun-arg)
(evil-leader/set-key "qbc" 'quickrun-compile-only)
(evil-leader/set-key "qbs" 'quickrun-shell)
(evil-leader/set-key "qbx" 'quickrun)
(evil-leader/set-key "qeb" 'eval-buffer)
(evil-leader/set-key "qex" 'eval-last-sexp)
(evil-leader/set-key "qh"  'helm-quickrun)
(evil-leader/set-key "qrr" 'quickrun-replace-region)
(evil-leader/set-key "qrx" 'quickrun-region)
;; toggle ---------------------------------------------------------------------
(evil-leader/set-key "t8" 'toggle-fill-column-indicator)
(evil-leader/set-key "ta"  'auto-complete-mode)
(evil-leader/set-key "tf"  'fringe-mode)
(evil-leader/set-key "th"  'auto-highlight-symbol-mode)
(evil-leader/set-key "tn"  'global-linum-mode)
(evil-leader/set-key "ttd" 'load-theme-day)
(evil-leader/set-key "ttn" 'load-theme-night)
;; selection ------------------------------------------------------------------
(evil-leader/set-key "v" 'er/expand-region)
;; window ---------------------------------------------------------------------
(evil-leader/set-key "wb" 'evenly-split-window-right)
(evil-leader/set-key "wc" 'delete-window)
(evil-leader/set-key "wd" 'toggle-current-window-dedication)
(evil-leader/set-key "wH" 'evil-window-move-far-left)
(evil-leader/set-key "wh" 'evil-window-left)
(evil-leader/set-key "wJ" 'evil-window-move-very-bottom)
(evil-leader/set-key "wj" 'evil-window-down)
(evil-leader/set-key "wK" 'evil-window-move-very-top)
(evil-leader/set-key "wk" 'evil-window-up)
(evil-leader/set-key "wL" 'evil-window-move-far-right)
(evil-leader/set-key "wl" 'evil-window-right)
(evil-leader/set-key "wm" 'toggle-maximize-buffer)
(evil-leader/set-key "wr" 'rotate-windows)
(evil-leader/set-key "wR" 'rotate-windows-backward)
(evil-leader/set-key "wv" 'evenly-split-window-below)
(evil-leader/set-key "wsh" 'shrink-window-horizontally)
(evil-leader/set-key "wsj" 'shrink-window)
(evil-leader/set-key "wsk" 'enlarge-window)
(evil-leader/set-key "wsl" 'enlarge-window-horizontally)
(evil-leader/set-key "ww" 'other-window)
;; window layout splitter -----------------------------------------------------
(evil-leader/set-key "wy0" 'select-window-0)
(evil-leader/set-key "wy1" 'select-window-1)
(evil-leader/set-key "wy2" 'select-window-2)
(evil-leader/set-key "wy3" 'select-window-3)
(evil-leader/set-key "wy4" 'select-window-4)
(evil-leader/set-key "wy5" 'select-window-5)
(evil-leader/set-key "wy6" 'select-window-6)
(evil-leader/set-key "wy7" 'select-window-7)
(evil-leader/set-key "wy8" 'select-window-8)
(evil-leader/set-key "wy9" 'select-window-9)
;; text -----------------------------------------------------------------------
(evil-leader/set-key "xdw" 'delete-trailing-whitespace)
(evil-leader/set-key "xgT" 'google-translate-query-translate)
(evil-leader/set-key "xgt" 'google-translate-at-point)
(evil-leader/set-key "xgR" 'google-translate-query-translate-reverse)
(evil-leader/set-key "xgr" 'google-translate-at-point-reverse)
(evil-leader/set-key "xmj" 'move-text-down)
(evil-leader/set-key "xmk" 'move-text-up)
(evil-leader/set-key "xtc" 'transpose-chars)
(evil-leader/set-key "xtl" 'transpose-lines)
(evil-leader/set-key "xtw" 'transpose-words)
;; centered cursor ------------------------------------------------------------
(evil-leader/set-key "zz" 'global-centered-cursor-mode)

(provide 'my-keybindings)
