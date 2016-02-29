;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration."
  (setq-default
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     ;; better-defaults
     emacs-lisp
     git
     markdown
     org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     syntax-checking
     version-control
     haskell
     racket
     elm
     python
     clojure)
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages '(fuel f)
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; Either `vim' or `emacs'. Evil is always enabled but if the variable
   ;; is `emacs' then the `holy-mode' is enabled at startup.
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer.
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed.
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'."
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-dark
                         solarized-dark
                         spacemacs-light
                         solarized-light
                         leuven
                         monokai
                         zenburn)
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it.
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; Default value is `cache'.
   dotspacemacs-auto-save-file-location 'cache
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f) is replaced.
   dotspacemacs-use-ido nil
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content.
   dotspacemacs-enable-paste-micro-state nil
   ;; Guide-key delay in seconds. The Guide-key is the popup buffer listing
   ;; the commands bound to the current keystrokes.
   dotspacemacs-guide-key-delay 0.4
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil ;; to boost the loading time.
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up.
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX."
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line.
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen.
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible value is `all',
   ;; `current' or `nil'. Default is `all'
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now.
   dotspacemacs-default-package-repository nil
   )
  ;; User initialization goes here
  )

(defun dotspacemacs/config ()
  "Configuration function.
 This function is called at the very end of Spacemacs initialization after
layers configuration."


  ;; OWN Configuration
  (set-face-attribute 'default t :font "DejaVu Sans Mono-12")
  (set-default-font "DejaVu Sans Mono-12")

  ;; Configurating SLIME ... Maybe place this in a layer?
  (load "c:/Users/j.arnaldich/AppData/Local/common-lisp/quicklisp/slime-helper.el")
  (setq inferior-lisp-program "e:/public/sbcl/sbcl-w7.exe --dynamic-space-size 1024")
  (setq slime-contribs '(slime-fancy))

  ;; PROJECTILE: Find test files
  (setq projectile-test-prefix-function
        (lambda (x)
          (cond ((eq x 'python-pkg)
                 "test_")
                (t (error "Prefix not defined for this project type")))))

  ;; ORG-MODE
  (setq org-log-done 'time)
  (setq org-use-fast-todo-selection t)
  (setq org-treat-S-cursor-todo-selection-as-state-change nil)

  (setq org-agenda-files (list "e:/git/cartorg"))
  (setq org-default-notes-files (list "e:/git/cartorg/refile.org"))

  (setq org-todo-keywords
        (quote ((sequence "TODO(t)" "WORKING(k)" "|" "DONE(d)")
                (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)"))))
  
  (setq org-todo-keyword-faces
        (quote (("TODO" :foreground "red" :weight bold)
                ("WORKING" :foreground "yellow" :weight bold)
                ("DONE" :foreground "forest green" :weight bold)
                ("WAITING" :foreground "orange" :weight bold)
                ("HOLD" :foreground "magenta" :weight bold)
                ("CANCELLED" :foreground "forest green" :weight bold))))

  (setq org-todo-state-tags-triggers
        (quote (("CANCELLED" ("CANCELLED" . t))
                ("WAITING" ("WAITING" . t))
                ("HOLD" ("WAITING") ("HOLD" . t))
                (done ("WAITING") ("HOLD"))
                ("TODO" ("WAITING") ("CANCELLED") ("HOLD"))
                ("WORKING" ("WAITING") ("CANCELLED") ("HOLD"))
                ("DONE" ("WAITING") ("CANCELLED") ("HOLD")))))

  (setq org-agenda-span 'month)

  ;; FUEL 
  (setq fuel-listener-factor-binary "e:/Soft/factor-windows-x86-64-0.97/factor/factor.com")
  (setq fuel-listener-factor-image "e:/Soft/factor-windows-x86-64-0.97/factor/factor.image")
  (setq fuel-listener-factor-image "e:/Soft/factor-windows-x86-64-0.97/factor/factor.image")
  (setq fuel-factor-root-dir "e:/Soft/factor-windows-x86-64-0.97/factor")

  ;; SKELETONS
  (define-skeleton icgc-py-module-header
    "Capçalera estàndard per a mòduls icgc"
    nil
    "# -*- coding: utf-8 -*-" \n
    "\"\"\"" \n
    "Descripció: " _ "\n"
    "Autor(s):" (getenv "USERNAME") "\n"
    "\"\"\"" \n )

  ;; PYTHON
  (setq python-shell-completion-native t)
  (setq python-shell-interpreter-args  "-i")
  (setq python-shell-interpreter  "python")
)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ahs-case-fold-search nil)
 '(ahs-default-range (quote ahs-range-whole-buffer))
 '(ahs-idle-interval 0.25)
 '(ahs-idle-timer 0 t)
 '(ahs-inhibit-face-list nil)
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   (quote
    ("c2c8e9917d17d2e5be05e4e8803d393c40c12eb385d5106b38b393e4791e9738" "bf3ec301ea82ab546efb39c2fdd4412d1188c7382ff3bbadd74a8ecae4121678" "9e1e2e7590c2f443c09a3f6240a05ada53f06566a6873c37eeae10d13dc372c9" default)))
 '(fci-rule-color "#073642" t)
 '(haskell-interactive-popup-errors nil)
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(magit-diff-use-overlays nil)
 '(package-selected-packages
   (quote
    (flycheck-pos-tip flycheck-haskell flycheck-elm flycheck zenburn-theme monokai-theme toc-org org-repo-todo org-present org-pomodoro org-plus-contrib org-bullets htmlize gnuplot evil-org multi-web-mode web-mode web lua-mode elm-mode geiser vbasense racket-mode mmm-mode markdown-toc markdown-mode clj-refactor cider-eval-sexp-fu cider align-cljlet spray magit-gitflow define-word which-key quelpa package-build auto-complete avy ghc company anzu iedit smartparens highlight flx haskell-mode popup pos-tip guide-key popwin yasnippet request gitignore-mode projectile helm helm-core parent-mode async pkg-info epl s evil-leader evil bind-key dash pyvenv pytest pyenv-mode pony-mode pip-requirements hy-mode helm-pydoc cython-mode company-anaconda anaconda-mode pythonic f paradox magit company-quickhelp magit-popup git-commit with-editor hydra spinner window-numbering volatile-highlights vi-tilde-fringe use-package smooth-scrolling smeargle shm rfringe rainbow-delimiters powerline pcre2el page-break-lines open-junk-file neotree move-text macrostep linum-relative leuven-theme info+ indent-guide ido-vertical-mode hungry-delete hl-anything hindent highlight-parentheses highlight-numbers highlight-indentation helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-gitignore helm-descbinds helm-c-yasnippet helm-ag haskell-snippets guide-key-tip google-translate golden-ratio gitconfig-mode gitattributes-mode git-timemachine git-messenger gh-md fuel fringe-helper flx-ido fill-column-indicator fancy-battery expand-region exec-path-from-shell evil-visualstar evil-tutor evil-terminal-cursor-changer evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-matchit evil-lisp-state evil-jumper evil-indent-textobject evil-iedit-state evil-exchange evil-escape evil-args evil-anzu eval-sexp-fu elisp-slime-nav diff-hl company-statistics company-ghc company-cabal cmm-mode clean-aindent-mode buffer-move auto-yasnippet auto-highlight-symbol auto-dictionary aggressive-indent adaptive-wrap ace-window ace-link ace-jump-mode ac-ispell)))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(ring-bell-function (quote ignore))
 '(safe-local-variable-values
   (quote
    ((org-todo-keywords
      (sequence "TODO(t)" "WORKING(k)" "|" "DONE(d)")
      (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)"))
     (org-todo-keyword-faces
      ("TODO" :foreground "red" :weight bold)
      ("WORKING" :foreground "yellow" :weight bold)
      ("DONE" :foreground "forest green" :weight bold)
      ("WAITING" :foreground "orange" :weight bold)
      ("HOLD" :foreground "magenta" :weight bold)
      ("CANCELLED" :foreground "forest green" :weight bold))
     (org-treat-S-cursor-todo-selection-as-state-change)
     (org-use-fast-todo-selection . t)
     (org-log-done quote time)
     (eval progn
           (let*
               ((current-dir
                 (file-name-directory
                  (buffer-file-name)))
                (exploded
                 (split-string current-dir "/"))
                (root
                 (mapconcat
                  (quote identity)
                  (butlast exploded
                           (length
                            (member "ICC" exploded)))
                  "/"))
                (pythonpath
                 (concat current-dir ";" root "/ICC/lib")))
             (setenv "PYTHONPATH" pythonpath))
           (setenv "POSTGIS_HOST" "FOTOW7")
           (setenv "POSTGIS_DBNAME" "SPOT-5_test")
           (setenv "POSTGIS_USER" "postgres")
           (setenv "POSTGIS_PWD" "Chucky123$")
           (message
            (getenv "PYTHONPATH"))
           (defun deploy nil "interactive"
                  (interactive)
                  (let*
                      ((name
                        (split-string buffer-file-name "/"))
                       (src-suffix
                        (mapconcat
                         (quote identity)
                         (member "ICC" name)
                         "/"))
                       (target-file
                        (concat *ksa-deploy* src-suffix))
                       (target-file-qgis
                        (concat *nas03-deploy* src-suffix)))
                    (copy-file buffer-file-name target-file 1)
                    (delete-file
                     (concat target-file "c"))
                    (copy-file buffer-file-name target-file-qgis 1)
                    (delete-file
                     (concat target-file-qgis "c")))))
     (*nas03-deploy* . "//Nas03/geoproces/dfapplications/TriQ/")
     (*ksa-deploy* . "//Euterpe/wp7a-ksasoft-triq-owncloud-hq-dmp-phg-25/")
     (eval progn
           (setenv "PYTHONPATH"
                   (file-name-directory
                    (buffer-file-name)))
           (message
            (getenv "PYTHONPATH")))
     (eval progn
           (setenv "PYTHONPATH"
                   (file-name-directory
                    (buffer-file-name)))
           (if
               (anaconda-mode-running-p)
               (progn
                 (message "Rebooting running")
                 (anaconda-mode-stop)
                 (anaconda-mode-start)))
           (message
            (getenv "PYTHONPATH")))
     (python-shell-completion-native)
     (python-shell-interpreter-args . "-i")
     (python-shell-interpreter . "python"))))
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#c85d17")
     (60 . "#be730b")
     (80 . "#b58900")
     (100 . "#a58e00")
     (120 . "#9d9100")
     (140 . "#959300")
     (160 . "#8d9600")
     (180 . "#859900")
     (200 . "#669b32")
     (220 . "#579d4c")
     (240 . "#489e65")
     (260 . "#399f7e")
     (280 . "#2aa198")
     (300 . "#2898af")
     (320 . "#2793ba")
     (340 . "#268fc6")
     (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))


;; (load "f.el")

(defun cabal-repl ()
  (interactive)
  ;; (interactive "sSandbox: ")
  ;; (let ((try1
  ;; (setq haskell-program-name
  ;;       (concat "e:/CabalSandboxes/" sandbox "/.cabal-sandbox/bin/cabal.exe"))

  ;; (run-haskell)
  (let ((maybe-repl (f-traverse-upwards
                     (lambda (path)
                       (f-exists? (f-expand ".cabal-sandbox" path))))))
    (if maybe-repl
        (progn 
          (message "Detected sandbox at %s" maybe-repl)
          (setq haskell-program-name
                (concat (f-join maybe-repl ".cabal-sandbox" "bin" "cabal.exe") " repl"))
          (cd maybe-repl)
          (run-haskell))
      (message "No cabal sandbox found"))))
