#!/bin/sh

cd /github/workspace
sed -i "s/gitSHA/${GITHUB_SHA::7}/" resume.tex
xelatex resume.tex
sed -i "s/${GITHUB_SHA::7}/gitSHA/" resume.tex

