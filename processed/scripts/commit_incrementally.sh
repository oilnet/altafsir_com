#!/bin/bash

for i in yaml/sura_???/*/*; do
  echo $i
  git add "$i" && \
  git commit -uno -a -m "autocommit" && \
  git push
done
