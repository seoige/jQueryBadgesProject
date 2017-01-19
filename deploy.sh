#!/bin/bash
echo "Welcome to Autodeploy - This will add, commit and push your latest changes"
echo -n "Enter a commit message > "
read msg
echo "You entered: $msg"
git st
echo ""
echo "..............."
echo ""
git add *
git st
echo ""
echo "................"
echo ""
git commit -m "$msg"
git st
echo ""
echo "................"
echo ""
git push
git st
echo ""
echo "................"
echo ""
echo "deploying to git pages:"
git subtree push --prefix src origin gh-pages
echo ""
echo "................"
echo ""
echo "done!"
