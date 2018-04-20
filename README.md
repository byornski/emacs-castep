# emacs-castep
Emacs script for CASTEP development. Uses flycheck for runtime 

Installation
------------
1. Install [flycheck](http://www.flycheck.org/en/latest/user/installation.html)
2. Install [exuberant ctags](http://ctags.sourceforge.net/) (Available from most package managers)
3. Place *.dir-locals.el* in main castep folder
4. Modify to your own build directory.
5. Run `ctags -e -R Source/` to generate TAGS file

Key Bindings
------------
In users main emacs file (~/.emacs normally)

    (global-set-key (kbd "<f7>") 'flycheck-previous-error)
    (global-set-key (kbd "<f8>") 'flycheck-next-error)```

Known Issues
------------
1. Need to have some version of gfortran installed.
2. Flycheck closes on wave.f90 with too many errors reported. 
