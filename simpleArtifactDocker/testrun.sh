#!/usr/bin/env bash
branch_or_tag_name=$arg
echo $branch_or_tag_name
mkdir $branch_or_tag_name
cd $branch_or_tag_name
echo "Hello" > output.txt
