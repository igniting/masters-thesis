#!/bin/bash

make
commit_hash=$(git rev-parse --short HEAD)
git checkout gh-pages
mv thesis.pdf static/
git add static/thesis.pdf
git commit -m "Update for ${commit_hash}"
git push origin gh-pages
git checkout master
