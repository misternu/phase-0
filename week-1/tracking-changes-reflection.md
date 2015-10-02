- How does tracking and adding changes make developers' lives easier?
  
  It allows mistakes to be undone. I imagine that it is also helpful to know who wrote what, so you know who to ask for information.

- What is a commit?

  A commit is a collection of file manipulations that can be undone at a later time.

- What are the best practices for commit messages?

  A short summary in the imperative mood. A longer summary after an empty line. Wrap the message to 72 columns.

- What does the HEAD^ argument mean?

  It means the previous commit.

- What are the 3 stages of a git change and how do you move a file from one stage to the other?

  First you edit the file with a text editor. Then you stage the change with `git add`. Finally you commit the change with `git commit`

- Write a handy cheatsheet of the commands you need to commit your changes?

  `git status` gives the current state of the repository

  `git add` stages changes to files or begins tracking new files

  `git commit -m "foo bar"` commits with a message 'foo bar'

  `git commit -v` commits and opens a text editor to write a message

  `git checkout` moves the head to a particular branch or commit

  `git pull origin branch_name` fetches and merges remote repository

  `git merge branch_name` merges the branch into the current branch

  `git push` Merge changes to the remote branch. This is the easy way but bad practice.

- What is a pull request and how do you create and merge one?

  A pull request is a request to merge a branch into another branch. First make sure that you have pushed the branch to github with `git push origin branch_name`. Navigate to the branch on the github website and click 'pull request'. Comment and click 'create pull request'.

  Normally you don't do this yourself, but in this case go to the pull request and merge it. Delete the branch if neccessary, pull down the master branch, delete the local copy of the branch.

- Why are pull requests preferred when working with teams?

  It makes sure that decisions to move changes into the master branch aren't unilateral. Other peoples branches are relying on the master branch, and so changing it needs to be something that everyone is ready for.