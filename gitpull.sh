#!/bin/bash

repo_root="/opt/repos"

if [ ! -d "$repo_root" ]; then
  echo "Directory Not Found"
fi

tgt_dir=$repo_root/*
for D in $tgt_dir; do
  if [ -d "$D" ]
  then
    cd $D
    echo "git pull $D"
    git pull
  fi
done
