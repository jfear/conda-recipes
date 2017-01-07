#!/bin/bash

if [ ! -e $(jupyter --data-dir)/nbextensions/vim_binding ]; then
    mkdir -p $(jupyter --data-dir)/nbextensions/vim_binding
fi

cp -R * $(jupyter --data-dir)/nbextensions/vim_binding/
jupyter nbextension enable vim_binding/vim_binding
