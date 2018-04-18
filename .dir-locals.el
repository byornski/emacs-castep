;;; Directory Local Variables
;;; For more information see (info "(emacs) Directory Variables")
((f90-mode . ((eval . (set (make-local-variable 'my-project-path)    ;;; Some code to find the main CASTEP folder
                      (file-name-directory 
                       (let ((d (dir-locals-find-file ".")))
                         (if (stringp d) d (car d))))))
	      (eval . (message "Project directory set to `%s'." my-project-path))   ;;;Print debug message
	      (eval . (setq default-directory my-project-path))                     ;;;Set main folder (for compile to work)
	      (eval . (setq flycheck-gfortran-include-path (list (concat my-project-path "obj/linux_x86_64_gfortran7.0")))) ;;; Add build path to include
	      (flycheck-gfortran-language-standard . "f2008")   ;;;Set fortran standard to warn/check
	      (compile-command . "make"))))  ;;;Set build command (want to stop on first error so no -k)

