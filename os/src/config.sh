#!/bin/sh
find . -name "*.rs" -o -name "*.asm" > cscope.files
cscope -bkq -i cscope.files
