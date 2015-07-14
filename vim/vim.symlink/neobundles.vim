" neobundle setup {
  if has("vim_starting")
    set nocompatible " Be iMproved

    " required
    set runtimepath+=~/.vim/bundle/neobundle.vim/
  endif

  " required
  call neobundle#begin(expand("~/.vim/bundle/"))

  " Let NeoBundle manage NeoBundle, required
  NeoBundleFetch "Shougo/neobundle.vim"
" }

" neobundles {

  " core {
    " interactive command execution, makes NeoBundle use asynchronous update/install, e.g. FAST!
    NeoBundle "Shougo/vimproc.vim", {
    \   "build": {
    \     "mac":  "make -f make_mac.mak",
    \     "unix": "make -f make_unix.mak",
    \   },
    \ }

    NeoBundle "matchit.zip"           " extended % matching for html, latex, and many other languages
    NeoBundle "bling/vim-airline"     " lean & mean status/tabline for vim that's light as air, replaced Lokaltog/powerline
    NeoBundle "tpope/vim-surround"    " quoting/parenthesizing made simple
    NeoBundle "tpope/vim-repeat"      " enable repeating supported plugin maps with '.'
    NeoBundle "tpope/vim-dispatch"    " asynchronous build and test dispatcher
    NeoBundle "tpope/vim-eunuch"      " sugar for the unix shell commands
    NeoBundle "tpope/vim-unimpaired"  " pairs of handy bracket mappings
    NeoBundle "tpope/vim-obsession"   " continuously updated session files
    NeoBundle "wikitopian/hardmode"   " disables the arrow keys, the hjkl keys, the page up/down keys, and a handful of other keys which allow one to rely on character-wise navigation
  " }

  " general programming {
    NeoBundle "joshuarubin/vim-polyglot"                                                              " a collection of language packs for vim, forked from sheerun/vim-polyglot
    NeoBundle "AndrewRadev/splitjoin.vim"                                                             " simplifies the transition between multi-line and single-line code
    NeoBundle "arnaud-lb/vim-php-namespace"                                                           " types 'use' statements for you
    NeoBundle "nathanaelkane/vim-indent-guides"                                                       " visually display indent levels in code
    NeoBundle "scrooloose/syntastic"                                                                  " syntax checking
    NeoBundle "jiangmiao/auto-pairs"                                                                  " insert or delete brackets, parens, quotes in pair
    NeoBundle "google/vim-codefmt", { "depends": [ "google/vim-maktaba", "google/vim-codefmtlib" ] }  " utility for syntax-aware code formatting
  " }

  " web {
    NeoBundleLazy "amirh/HTML-AutoCloseTag", {"autoload":{"filetypes":["html","xml"]}}  " automatically closes html tags once you finish typing them
    NeoBundleLazy "gregsexton/MatchTag",     {"autoload":{"filetypes":["html","xml"]}}  " matchparen for html tags
  " }

  " javascript {
    NeoBundleLazy "maksimr/vim-jsbeautify", {"autoload":{"filetypes":["javascript"]}}  " format javascript files with js-beautify
    NeoBundleLazy "mmalecki/vim-node.js", {"autoload":{"filetypes":["javascript"]}}    " file type detect which detects node.js shebang
  " }

  " python {
    NeoBundleLazy "klen/python-mode",     {"autoload":{"filetypes":["python"]}}  " helps you to create python code very quickly
    NeoBundleLazy "davidhalter/jedi-vim", {"autoload":{"filetypes":["python"]}}  " awesome python autocompletion
  " }

  " ruby {
    NeoBundle "tpope/vim-rails"    " ruby on rails power tools
    NeoBundle "tpope/vim-bundler"  " lightweight support for ruby's bundler
  " }

  " go (golang) {
    if $GOPATH != ""
      NeoBundle   "fatih/vim-go",                                             " full featured go development environment support for vim
    endif
  " }

  " scm {
    NeoBundle     "mhinz/vim-signify"                                                                    " show a vcs diff using vim's sign column
    NeoBundle     "tpope/vim-fugitive"                                                                   " a git wrapper so awesome, it should be illegal
    NeoBundleLazy "gregsexton/gitv", {"depends":["tpope/vim-fugitive"], "autoload":{"commands":"Gitv"}}  " a gitk clone
  " }

  " snippets & autocomplete {
    NeoBundle     "Shougo/neosnippet.vim"                                                       " offers functionality similar to snipmate or snippetsemu
    NeoBundle     "Shougo/neosnippet-snippets"                                                  " the standard snippets repository for neosnippet
    NeoBundle     "honza/vim-snippets"                                                          " contains snippets files for various programming languages
    NeoBundleLazy "Shougo/neocomplete.vim", {"autoload":{"insert":1}, "vim_version":'7.3.885'}  " next generation completion framework
  " }

  " editing {
    NeoBundle     "tpope/vim-endwise"                                          " wisely add 'end' in ruby, endfunction/endif/more in vim script, etc
    NeoBundle     "tpope/vim-speeddating"                                      " use ctrl-a/ctrl-x to increment dates, times, and more
    NeoBundle     "thinca/vim-visualstar"                                      " search for selection with '*' in visual mode
    "NeoBundle     "chrisbra/NrrwRgn"                                           " narrow region, like in emacs
    NeoBundle     "tomtom/tcomment_vim"                                        " easy to use, file-type sensible comments
    NeoBundle     "terryma/vim-expand-region"                                  " visually select increasingly larger regions of text using the same key combination
    "NeoBundle     "terryma/vim-multiple-cursors"                               " true sublime text style multiple selections
    "NeoBundle     "justinmk/vim-sneak"                                         " motion plugin that jumps to any location specified by two characters
    NeoBundleLazy "editorconfig/editorconfig-vim", {"autoload":{"insert":1}}   " editorconfig
    NeoBundleLazy "godlygeek/tabular", {"autoload":{"commands":"Tabularize"}}  " text filtering and alignment
  " }

  " navigation {
    NeoBundle     "Shougo/vimfiler.vim"                                            " a powerful file explorer
    NeoBundleLazy "mbbill/undotree",   {"autoload":{"commands":"UndotreeToggle"}}  " display your undo history in a graph
    NeoBundleLazy "majutsushi/tagbar", {"autoload":{"commands":"TagbarToggle"}}    " displays tags in a window, ordered by scope http://majutsushi.github.com/tagbar/
  " }

  " unite {
    NeoBundle     "Shougo/unite.vim"                                                                                                       " search and display information from arbitrary sources like files, buffers, recently used files or registers, replaced kien/ctrlp.vim
    NeoBundle     "thinca/vim-qfreplace",                                                                                                  " perform replacements in quickfix
    NeoBundleLazy "Shougo/neomru.vim",               {"autoload":{"unite_sources":["file_mru","directory_mru"]}}                           " unite.vim MRU sources, depends on Shougo/unite.vim
    NeoBundleLazy "osyo-manga/unite-airline_themes", {"autoload":{"unite_sources":"airline_themes"}}                                       " unite airline themes, duh
    NeoBundleLazy "ujihisa/unite-colorscheme",       {"autoload":{"unite_sources":"colorscheme"}}                                          " unite plugin for changing your colorscheme
    NeoBundleLazy "tsukkee/unite-tag",               {"autoload":{"unite_sources":["tag","tag/file"]}}                                     " unite plugin for selecting tags or selecting files including tags
    NeoBundleLazy "Shougo/unite-outline",            {"autoload":{"unite_sources":"outline"}}                                              " unite source which provides the buffer with an outline view
    NeoBundleLazy "Shougo/unite-help",               {"autoload":{"unite_sources":"help"}}                                                 " unite plugin for help
    NeoBundleLazy "Shougo/unite-session",            {"autoload":{"unite_sources":["session","session/new"]}}                              " unite source which nominates sessions
    NeoBundleLazy "thinca/vim-unite-history",        {"autoload":{"unite_sources":["history/command","history/search","history/yank"]}}    " unite source for history of command/search
    NeoBundleLazy "Shougo/neossh.vim",               {"autoload":{"unite_sources":"ssh"}}                                                  " unite source which nominates files over ssh
    NeoBundleLazy "Shougo/junkfile.vim",             {"autoload":{"commands":"JunkfileOpen","unite_sources":["junkfile","junkfile/new"]}}  " creates junk files with filetype
  " }

  " textobj {
    NeoBundle "kana/vim-textobj-user"             " painlessly create your own text objects
    NeoBundle "kana/vim-textobj-indent"           " text objects for indented blocks of lines, depends on kana/vim-textobj-user
    NeoBundle "kana/vim-textobj-entire"           " text objects for entire buffer
    NeoBundle "lucapette/vim-textobj-underscore"  " underscore text-object
    NeoBundle "reedes/vim-textobj-sentence"       " improving on vim's native sentence text object and motion, depends on kana/vim-textobject-user
    NeoBundle "reedes/vim-textobj-quote"          " use ‘curly’ quote characters, depends on kana/vim-textobject-user
  " }

  " writing {
    NeoBundle "reedes/vim-litecorrect"       " lightweight auto-correction
    NeoBundle "reedes/vim-wordy"             " uncover usage problems in your writing
  " }

  " misc {
    if exists("$TMUX")
      NeoBundle "christoomey/vim-tmux-navigator"     " seamless navigation between tmux panes and vim splits
      NeoBundle "tmux-plugins/vim-tmux-focus-events" " fix FocusGained and FocusLost autocommand events
    endif

    NeoBundle     "vimwiki"                                                                                                " personal wiki
    NeoBundle     "bufkill.vim"                                                                                            " unload/delete/wipe a buffer, keep its window(s), display last accessed buffer(s)
    NeoBundle     "chrisbra/vim_faq"                                                                                       " the vim faq from http://vimdoc.sourceforge.net/
    NeoBundle     "mhinz/vim-startify"                                                                                     " shows recently used files, bookmarks and sessions
    NeoBundle     "thinca/vim-quickrun"                                                                                    " run a command and show its result quickly
    NeoBundle     "terryma/vim-smooth-scroll"                                                                              " make scrolling more pleasant
    NeoBundle     "Lokaltog/vim-easymotion"                                                                                " vim motions on speed!
    NeoBundle     "tpope/vim-abolish"                                                                                      " easily search for, substitute, and abbreviate multiple variants of a word
    NeoBundle     "osyo-manga/vim-over"                                                                                    " :substitute preview
    NeoBundle     "ton/vim-bufsurf"                                                                                        " enables surfing through buffers based on viewing history per window
    NeoBundleLazy "guns/xterm-color-table.vim", {"autoload":{"commands":"XtermColorTable"}}                                " all 256 xterm colors with their rgb equivalents
    NeoBundleLazy "mattn/gist-vim", {"depends":"mattn/webapi-vim","autoload":{"commands":"Gist"}}                          " vimscript for creating gists (http://gist.github.com)
    NeoBundleLazy "Shougo/vimshell.vim", {"autoload":{"commands":[ "VimShell", "VimShellInteractive" ]}}                   " an extreme shell that doesn't depend on external shells but is written completely in pure vim script
    NeoBundleLazy "rizzatti/dash.vim", {"depends":"rizzatti/funcoo.vim","autoload":{"commands":["Dash", "DashKeywords"]}}  " search for terms using [Dash.app](http://kapeli.com/), making API lookups simple
    NeoBundleLazy "zhaocai/GoldenView.Vim", {"autoload":{"mappings":["<Plug>ToggleGoldenViewAutoResize"]}}                 " always have a nice view for split windows
  " }

  " color schemes {
    if has("gui") || v:version >= 703
      NeoBundle "godlygeek/csapprox"              " make gvim-only colorschemes work transparently in terminal vim
    endif

    NeoBundle "altercation/vim-colors-solarized"  " precision colorscheme (http://ethanschoonover.com/solarized)
    NeoBundle "nanotech/jellybeans.vim"           " colorful, dark color scheme
    NeoBundle "tomasr/molokai"                    " port of the monokai theme for textmate
    NeoBundle "chriskempson/vim-tomorrow-theme"   " a bright theme with pastel colours and sensible syntax highlighting
    NeoBundle "chriskempson/base16-vim"           " color schemes for hackers
    NeoBundle "w0ng/vim-hybrid"                   " dark color scheme
    NeoBundle "sjl/badwolf"                       " colorscheme pieced together from various colors
    NeoBundle "zeis/vim-kolor"                    " colorful color scheme with 256 color terminal support
    NeoBundle "ajh17/Spacegray.vim"               " loosely based on the spacegray xcode theme
  " }

" }

" neobundle tear down {
  call neobundle#end()

  " required
  filetype plugin indent on

  " If there are uninstalled bundles found on startup,
  " this will conveniently prompt you to install them.
  NeoBundleCheck
" }
