#!/bin/bash

git status

read -p "Do you want to add and commit your changes? (yes/no): " confirm_commit

if [ "$confirm_commit" = "yes" ]; then
	read -p "Enter commit message: " commit_message	
	git add .
	git commit -m "$commit_message"
	git push
else
	echo "Exiting without committing changes."
	exit 0
fi	
