#!/bin/bash

# Step 1: Change directory to 'book' directory
cd book

# Step 2: Initialize a Git repository with 'book' as the default branch
git init
git symbolic-ref HEAD refs/heads/book

# Step 3: Add all files in the current directory to the repository
git add .

# Step 4: Commit with user input
echo "Enter a commit message:"
read commit_message
git commit -m "$commit_message"

# Step 5: Add the remote 'origin'
git remote add origin git@github.com:UyCode/rust-lang-book-ug.git

# Step 6: Push the local 'book' branch to the remote 'origin'
git push -f origin book
