<div style="margin-bottom:3em;align:center">
  <img src="http://i.imgur.com/Nde6CNP.png">
</div>


:cat2::dash: A dark colorscheme for Vim. Developed by [@idlua](https://twitter.com/idlua).


## Installation

Put `badcat.vim` file in your `~/.vim/colors/` directory:

```
$ git clone https://github.com/idlua/badcat.git

$ cd badcat/colors/
$ mv badcat.vim ~/.vim/colors/
```

And add the following line to your `~/.vimrc` file:

```vim
syntax enable
set backgound=dark
colorscheme badcat
```


## Screenshots

![preview](http://i.imgur.com/4wJZzpL.png)
![preview](http://i.imgur.com/1nkan7B.png)


## Airline

I recommended you use [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
repository, with several airline themes, including **badcat**!

Done that, just add the following line to your `~/.vimrc` file:

```vim
let g:airline_theme='badcat'
```

![airline](http://i.imgur.com/EHiuzw0.png)


## Color Palette

![palette](http://i.imgur.com/B2wMeOh.jpg)

```
COLOR      | HEX     | CTERM | RGB
--------------------------------------------------
Black      | #080808 | 232   | rgb(8,8,8)
Dark Gray  | #121212 | 233   | rgb(18,18,18)
Gray       | #262626 | 235   | rgb(38,38,38)
Light Gray | #6c6c6c | 242   | rgb(108,108,108)
White      | #e4e4e4 | 254   | rgb(228,228,228)
Green      | #afd787 | 150   | rgb(175,215,135)
Yellow     | #ffffaf | 229   | rgb(255,255,175)
Purple     | #875faf | 097   | rgb(135,95,175)
Red        | #ff5f5f | 203   | rgb(255,95,95)
Blue       | #5fafd7 | 074   | rgb(95,175,215)
Orange     | #ffaf5f | 215   | rgb(255,175,95)
Pink       | #ff87df | 212   | rgb(255,135,223)
```

## Supported languages and plugins

##### Languages

- Vanilla Vim
- HTML
- CSS
- JavaScript
- Pug
- Sass
- Markdown
- JSON
- Shell Script
- Ruby *(partial)*

##### Plugins

- NERDTree


## License

[MIT](https://idlua.mit-license.org) © Luan Vicente
