#Expamle: git_push.sh "Updated" 
cd ..
# Check if there are changes to commit
if git diff-index --quiet HEAD --; then
    echo "No changes to commit. Exiting."
    exit 0
fi

# Add all files to the staging area
git add .

# Check if a commit message is provided as an argument
if [ -z "$1" ]; then
    # If no commit message is provided, ask for one
    read -p "Enter commit message: " commit_message
else
    # If a commit message is provided, use it
    commit_message="$1"
fi

# Commit changes with the provided message
git commit -m "$commit_message"

# Push changes to the remote repository's current branch
git push origin HEAD