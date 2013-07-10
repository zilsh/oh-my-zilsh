#!/usr/bin/env zsh

fpath=(${PWD}/functions $PWD/completions $fpath)

for config file ($PWD/lib/*.zsh); do
	source $config_file
done
