#!/bin/bash

. ~/.bashrc
tmux_sessions=$(tmux ls | wc -l)
desired_sessions=$(ls -al $PWD | wc -l)
if [ $tmux_sessions -ne $desired_sessions ]; then
    echo 'starting tmux sessions';
    for dir in $(find $PWD -maxdepth 1 ! -path '.*' -printf "%f\n"); do
        echo $dir;
        tmux new-session -c $PWD/$dir -s $dir  -d
        tmux split-window -p 20 -t 0 -v -c $PWD/$dir
    done
else
    echo 'tmux sessions are setup';
fi
