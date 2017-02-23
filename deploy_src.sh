#!/bin/bash
#
# Deploy the /public files to the remote git repository
#

# Delete the local /public folder
rm -r public

# Ask Hugo to re-build the site
hugo

# Git add / commit / push
git add *

echo 'Enter the commit message:'
read commitMessage

git commit -m "$commitMessage"

git push -u origin master
