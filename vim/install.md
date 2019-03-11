# VIM INSTALLATION INSTRUCTIONS
## 

- `cd /tmp`
- `git clone https://github.com/vim/vim`
- `cd /vim/src`
- `sudo make distclean` 
- `sudo ./configure --enable-pythoninterp --enable-python3interp --with-features=huge --enable-fail-if-missing  --prefix=$HOME/opt/vim`

- `sudo make && sudo make install`

