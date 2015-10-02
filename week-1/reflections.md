# 1.1 Think About Time

In this challenge I reviewed the idea of pomodoros, where one sets a timer for 25 minutes to complete a task, and then takes at least a 5 minute break. I watched and read information from Charles Duhigg about how habits are formed by behaviors, not mindsets (you hear this one paraphrased from Aristotle a lot).

Time boxing is when you set a small amount of time to complete a task. When you reach the end of the time, you must stop to reflect on what has been accomplished.

I currently use a system called "Getting Things Done" (GTD) that is too complex to summarize here. I meditate almost daily, but not on a routine. My time management is not working. The main reason is that I don't have work or another structure to build around.

During phase zero I will be testing out the time blocking method, putting my meditation on a schedule, and taking better care of my body.

# 1.2 The Command Line

Bash is both a unix shell and shell scripting language. The most challenging part was trying to follow along in the terminal during the introduction video, shouldn't have tried that.The only command that I couldn't get to work properly was the 'apropos' command, other Mac users reported similar issues. I think the two most important commands are cd and ls, getting around and seeing what's there. I can remember the listed commands:

-pwd Prints the working directory

-ls Lists the files in the working directory

-mv Moves or renames files

-cd Changes the current directory

-../ The parent directory

-touch Make an empty file

-mkdir Make a directory

-less Scrollable read only text viewer

-rmdir Remove a directory

-rm Remove a file or directory

-help Lists bash commands

# 1.3 Version Control

Git is software that keeps a history of the changes that you make to code. The changes that you make are chunked into commits, which are collections of file manipulations that can be undone at a later time. The history is also split into branches, each of which contains a different (but overlapping) set of commits. All of the branches are stored in the repository on your computer. This is the main task of version control, a stored history of all changes made to a project, that you can revert to any part of at any time. You can push and pull changes from your repository to other people's copy of the repository, for teamwork.

GitHub is a social code hosting service that stores repositories where multiple people can access them. When your work is complete locally, you can push it to githubs copy of the repository. Now, when other people want to work on the code, they can pull down the changes (commits) that you made, and their working environment will contain your new code. This is useful, since having a central repository to push/pull from is less complicated than going to each person's repository.

The important difference to remember is that Git is the version control system, and GitHub is a service that hosts an online copy of Git repositories.

# 1.4 Forking and Cloning

To create a new repository, click the 'new repository' button on github. Name the repository, choose a license, and click create. You will also want to clone a local copy, a clone URL is on the right hand side of the page. In terminal type "git clone [that URL]".

To fork a repository, click the fork button in the top right corner of the repos main page, and select your user account. This will make a copy of the current state of that repo in your repos.

This is useful so that you can make your own changes without messing up the original repository. In this case we are using it so that we can get copies of class materials to work on later.

I have lightly used git before, the main struggle that I had was getting it to remember my username and password for me. I ended up googling it.