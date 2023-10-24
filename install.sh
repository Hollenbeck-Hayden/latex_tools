#!/bin/bash

bin_dir=$HOME/bin


bin_link() {
    echo "Linking $1"
    ln -s $1 $bin_dir/$1
}

echo "bin directory: ${bin_dir}"

bin_link new_notes
bin_link pdf_latex_clean


if [[ -f $HOME/.vim/UltiSnips/tex.snippets ]]; then
    echo "tex.snippets already exists. Make a backup of it before installing."
    exit 1
fi

echo "Installing tex snippets"
cp tex.snippets $HOME/.vim/UltiSnips
