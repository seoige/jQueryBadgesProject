#!/bin/bash
echo "Welcome to Autodeploy - This will commit and push your latest changes"
echo -n "Enter a commit message > "
read msg
echo "You entered: $msg"
git st
git add *
git st
git commit -m "$msg"
git st
git push
git st
