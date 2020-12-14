#!/bin/sh

cd ..
sed -i "s/gitSHA/$(git log -1 --format='%h')/" resume.tex
xelatex --halt-on-error resume.tex
sed -i "s/$(git log -1 --format='%h')/gitSHA/" resume.tex
rm resume.aux resume.log resume.out

