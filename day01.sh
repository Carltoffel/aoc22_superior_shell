#! /bin/env sh

echo Part 1
cat $1 | tr '\n' '+' | sed 's/++/\n/g;s/+$/\n/' | bc | sort --numeric-sort --reverse | head -1

echo Part 2
cat $1 | tr '\n' '+' | sed 's/++/\n/g;s/+$/\n/' | bc | sort --numeric-sort --reverse | head -3 | tr '\n' '+' | sed 's/+$/\n/' | bc
