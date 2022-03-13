#!/usr/bin/env bash
# Id$ nonnax 2022-03-13 21:31:54 +0800
selected=$(fd -e yaml | fzf --preview 'echo {} | ./theme.rb && bat ~/.bashrc -p -l yaml --color=always')

# restore last theme if none selected 
[[ -z $selected ]] && cat .theme | ./theme.rb

./log.rb # record state
