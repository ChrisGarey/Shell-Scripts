#!/bin/bash

# Set your GitHub username
username=ChrisGarey

# Fetch a list of all repositories
repos=$(curl -s https://api.github.com/users/$username/repos?per_page=1000 | grep -o 'git@[^"]*')

# Clone each repository
for repo in $repos; do
  git clone $repo
done
