* How does tracking and adding changes make developers' lives easier?
	* Development is a lot troubleshooting and trying new things. By being able to add, track and back-track changes it helps developers work in an enivronmetn that they can try new things without negatively affecting their working versions. 
* What is a commit?
	*Commit creates a snapshot of the repostitory in its current state.
* What are the best practices for commit messages?
	* Write messages that give a short summary and write in present tense. Do it often and enough that people get a basic idea of what was done. One can add more to the commit file if they like but the limit is 50 characters.
* What does the HEAD^ argument mean?
	* Head is the version of the repository from the last commit.
* What are the 3 stages of a git change and how do you move a file from one stage to the other?
	* Modified - file was changed but not set to be committed. It needs to be added with $git add {filename}
	* Staged - File is ready to be committed. To commit us $git commit
	* Commited - File is in the local database. 
* Write a handy cheatsheet of the commands you need to commit your changes?
	* New branch - $git branch branchname
	* Go to branch - $git checkout branchname
	* Add file to stage - $git add filename
	* Commit file - $git commit -m 'message'
	* Sync to online - $git push origin branchname
* What is a pull request and how do you create and merge one?
	* Pull is used to fetch data from a remote server. Usually this would be from a previously pushed repository $git pull origin branchname
* Why are pull requests preferred when working with teams?
	* So that the user's local version matches the version being collaborated on
