Q1 How does tracking and adding changes make developers' lives easier?
We can have a log of the change history to make the working history clearer. We can also shift between different versions of changes before finalizing and push to the master

Q2 What is a commit?
Commit is like a save button, we always commit after making changes.

Q3 What are the best practices for commit messages?
1. Use imperitive form of verbs
2. The first line of the commit message should be a short description (50 characters is the soft limit), and should skip the full stop
3. includes motivation for the change, and contrasts its implementation with previous behaviour.

Q3 What does the HEAD^ argument mean?
HEAD is the commit you are currently on, HEAD^ is the last commit, HEAD~3, HEAD~4, HEAD~5, are the 3rd 4th and 5th commit from HEAD respectively.

Q4 What are the 3 stages of a git change and how do you move a file from one stage to the other?
1. Add the file to be tracked
2. Make Changes
3. Push Changes
To move a file from one stage to the other, we have to commit the changes.


Q5 Write a handy cheatsheet of the commands you need to commit your changes?
git commit -m "my commit message"


Q6 What is a pull request and how do you create and merge one?
A pull request is a way to merge code from a different branch into the master branch. I have to create a push request in Command Lines in my computer, then I can create a pull request on GitHub.


Q7 Why are pull requests preferred when working with teams?
When working with teams, members usually are splitted up in order to work on different parts. Pull requests are highly preferred in order for all the members to work simultaneously while not messing up the master code. Before merging with the master code, we can use the pull request to check if there is any conflict.