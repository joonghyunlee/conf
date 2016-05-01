# conf

## VIM
### Mac OS X
* copy **.vimrc** file 
```
$ git clone http://github.com/joonghyunlee/conf.git
...
$ cd conf
$ cp .vimrc ~/
```
* install **Vundle.vim**
```
$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
* install macvim
**YouCompleteMe** Plugin needs the latest version of Vim. So use **vim** binary in **macvim**
```
$ sudo brew install macvim
...
$ echo 'alias vim=/usr/local/bin/mvim' >> ~/.bash_profile  
```
* compile **YCM** Plugin
```
$ cd ~/.vim/bundle/YouCompleteMe
$ ./install.py
...
```
* install Plugins
```
$ vim
:PluginInstall
```
