;;; Directory Local Variables
;;; For more information see (info "(emacs) Directory Variables")
((f90-mode . ((eval . (set (make-local-variable 'my-project-path)    ;;; Some code to find the main CASTEP folder
                      (file-name-directory 
                       (let ((d (dir-locals-find-file ".")))
                         (if (stringp d) d (car d))))))
	      (eval . (message "Project directory set to `%s'." my-project-path))   ;;;Print debug message

	      
	      ;;; Set main project directory
	      (eval . (setq default-directory my-project-path)) 
	      ;;;Set build command (want to stop on first error so no -k)
	      (compile-command . "make")  

	      ;;; Flycheck
	      ;;; Set fortran standard to warn/check
	      (flycheck-gfortran-language-standard . "f2003")
	      (flycheck-gfortran-warnings . ("all" "extra" "implicit-procedure" "implicit-interface"
					     "use-without-only"))
	      
	      ;;; Flycheck error limit 
	      (eval . (setq flycheck-checker-error-threshold 1000))
	      ;;; Add build path to include directory for inter-module checking
	      (eval . (setq flycheck-gfortran-include-path
			    (list (concat my-project-path "obj/linux_x86_64_gfortran7.0")))) 
	      
	      
	      ;;; Tags file stuff
	      (eval . (setq tags-file-name "TAGS")) 

	      
	      )))

