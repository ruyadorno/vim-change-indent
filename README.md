# vim-change-indent

![Project unmaintained](https://img.shields.io/badge/project-unmaintained-red.svg)

Vim plugin to convert the indent sizes in a file.

## About

As a JavaScript developer I lost count of how many times I had to convert files from 4 spaces indent to use only 2 spaces - *which is now the norm around the Node.js world*.

This simple plugin aims at solving that very specific problem, providing a simple command that can convert the number of spaces used to indent the file. Luckily enough it also accepts a parameter so it can be useful for other similar situations but with slightly different space values.

## Usage

Once the plugin is properly installed, a `ChangeIndent` command will be available.

Just run:

    :ChangeIndent

By default it will try to convert your file from 4 spaces into the number of spaces defined in a local `.editorconfig` file. If no editor config file was found it will default to the current vim `tabstop` value.

If you want to convert it from different number of spaces, you can also provide an argument to the command:

    :ChangeIndent 8

The example above will try to convert 8-spaced indents to whatever your default value is.

## Installation

### Pathogen

The recommended installation method is via [Pathogen](https://github.com/tpope/vim-pathogen). Simply execute:

```shell
cd ~/.vim/bundle
git clone https://github.com/ruyadorno/vim-change-indent.git
```

## License
Copyright (c) 2014 Ruy Adorno. Licensed under the MIT license.

