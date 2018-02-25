#!/bin/bash

code --list-extensions > packages/software/vscode/extensions-list.txt
git add ./packages/software/vscode/extensions-list.txt
git commit -m "Save vscode extension list"
git push
