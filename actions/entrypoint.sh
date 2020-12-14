#!/bin/sh

cd /github/workspace
ls
sed -i -e "s/gitSHA/${GITHUB_SHA::7}/" resume.tex
xelatex resume.tex

