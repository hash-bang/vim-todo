VIM-TODO
========
A simple syntax file for the manipulation of TODO lists.

This project was originally forked from [TaskPaper.VIM](https://github.com/davidoc/taskpaper.vim) but is now pretty much an entirely new project.

Installation
=============
Unpack the package into your .vim directory.

Or unpack into ~/.vim/bundles if using Pathogen.

Syntax
=======
	# Comment
	- Example Project
		- Sub item 1
		- Sub item 2 @with_tag
		- Sub item 3 [with time]
		- Sub item 4a with deadline @1/1/2030
		- Sub item 4b with Soft deadline S@1/1/2030
		- Sub item 4c with Hard deadline H@1/1/2030
		- Sub item 4d with all types of deadlines @1/1/2030 S@1/1/2030 H@1/1/2030
		! Urgent item
		x Item marked as done
		? Question item
	- Morning meeting
		- Email Joan about project @email [10am]
		# Comment
		- Sub Project [1/2/2014]
			- Sub task
	Another project (this time without a -)
		- Sub item 1
		- Sub item 2

