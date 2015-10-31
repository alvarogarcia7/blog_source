#!/bin/bash

cd source/_posts
git update-index --assume-unchanged $(ls *.markdown)
rm $(ls *.markdown)