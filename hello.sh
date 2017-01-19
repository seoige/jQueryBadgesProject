#!/bin/bash
echo "Hello World"
echo "Bye"
echo -n "Enter a commit message > "
read msg
echo "You entered: $msg"
git st
git add *
git st
git commit -m "$msg"
git st
