#! /bin/env sh
echo Part 1
cat $1 | sed 's/A X/4/;s/A Y/8/;s/A Z/3/;s/B X/1/;s/B Y/5/;s/B Z/9/;s/C X/7/;s/C Y/2/;s/C Z/6/' | tr '\n' '+' | sed 's/+$/\n/' | bc

echo Part 2
cat $1 | sed 's/A X/3/;s/A Y/4/;s/A Z/8/;s/B X/1/;s/B Y/5/;s/B Z/9/;s/C X/2/;s/C Y/6/;s/C Z/7/' | tr '\n' '+' | sed 's/+$/\n/' | bc
