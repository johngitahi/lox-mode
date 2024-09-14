;; learning how to write a major mode
;; using elisp for emacs, i understand lox-mode is
;; already provided in the MELPA but i just wanted to
;; try it out as i am simultaneously writing the lox
;; interpreter

(define-generic-mode lox-mode
  (list "//") ; comments
  (list "and" "class" "else" "false" "fun" "for" "if"
	"if" "nil" "or" "print" "return" "super" "this"
	"true" "var" "while") ; keywords
  '(("\\<\\(true\\|false\\|nil\\)\\>" . font-lock-constant-face)
    ("\\<\\([0-9]+\\.[0-9]*\\)?\\)\\>" . font-lock-constant-face)
    ("\\<\\([A-Z][a-zA-Z0-9_]*\\)\\>" . font-lock-type-face)
    ("\\<\\(fun\\class\\)\\s-+\\([a-zA-Z_][a-zA-Z0-9_]*\\)" (2 font-lock-function-name-face)))
					;

  (list "\\.lox\\'") ; auto-load
  nil ; functions list(e.g indentation etc)
  "Major mode for the Lox programming language")
