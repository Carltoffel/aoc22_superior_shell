#! /bin/env sh

echo Part 1
cat $1 | sed -e ':l' -e 's/\([a-z]\)\([a-z]\)\([a-z]\)\([a-z]\)\([a-z]\)/\1\2\3\4\n\2\3\4\5/g' -e 't l' | sed 's/\(.\)\(.\)\(.\)\(.\)/\1\2\3\4\1\3\2\4/' | tr -s 'a-z' | grep '........' -n | head -1 | sed 's/\([0-9]*\).*/3+\1/'|bc

echo Part 2
