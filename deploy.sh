#!/usr/bin/env bash
tempdir=$(mktemp -d)
echo Using $tempdir
hugo
git clone git@github.com:Peachball/Peachball.github.io.git $tempdir
rm -rf $tempdir/*
cp --recursive public/* $tempdir/
cd $tempdir
git add .
git commit -m "Deploy new content"
git push
