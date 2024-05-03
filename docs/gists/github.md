# Github

Change global git username and email

```Bash
git config --global user.name 'mmatokovic'
git config --global user.email '27929908+mmatokovic@users.noreply.github.com'
```

Switch and Create a new branch `feature/`

```Bash
git checkout -b feature/ITI-236 dev
```

Switched to branch `dev`

```Bash
git checkout dev
```

Updating ea1b82a..05e9557

```Bash
git merge --no-ff myfeature
```

Deleted branch feature/ (was 05e9557).

```Bash
git branch -d feature/
```

Tag a milestone of a repo

```Bash
git tag -a -s 1.2.1
```

Reorganize or rewrite the commit history of a Git branch. It allows you to integrate changes from one branch into another while maintaining a linear commit history.

```Bash
git rebase dev
```

If you made changes to the `dev` branch but did not commit or add anything, you have a few options to move those changes to the `feature/IN-123`

```Bash
git stash                     #Stash your changes that you made on dev branch
git checkout feature/in-123   #Switch to the feature/IN-123 branch where you want to apply your changes
git stash apply               #Apply the stashed changes
git commit -am                #Moved changes from dev to feature/IN-123
```

Delete all your commit history but keep the code in its current state, it is very safe to do it as in the following:

```Bash
git checkout --orphan latest_branch #Checkout/create orphan branch (this branch won't show in git branch command)
git add -A                          #Add all the files to the newly created branch
git commit -am "commit message"     #Commit the changes
git branch -D main                  #Delete main (default) branch (this step is permanent)
git branch -m main                  #Rename the current branch to main
git push -f origin main             #Force update your remote repository
```

Remote Repositories: Git enables collaboration by supporting remote repositories. You can push your local changes to a remote repository and fetch or pull changes from it. Some common commands include:

`git remote add origin <remote_url>`: Associates your local repository with a remote repository.

`git remote -v`: Lists all remote repositories.

`git fetch`: Retrieves changes from a remote repository.

`git pull <remote_name> <branch_name>`: Fetches and merges changes from a remote repository.

`git push <remote_name> <branch_name>`: Pushes your local changes to a remote repository.

`git config --global core.longpaths true`