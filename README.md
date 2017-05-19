# GitLab_on_Ubuntu_16.04_minimal
Some install scripts and annotations about installing Gitlab on a ubuntu minimal server 16.04.2

# Install

I recommend to install this in a virtual machine or a fresh install of ubuntu minimal server 16.04.2

Clone this repository

	git clone https://github.com/stela2502/GitLab_on_Ubuntu_16.04_minimal.git

or
	git -C GitLab_on_Ubuntu_16.04_minimal pull

Afterwards this installation should host a github installation. 

# Problems:

I do not have a working e-mail setting and therefore I can not test the registering of users.
Instead I use the workaround to accept the new users from the admin interface.

This would not be acceptable for a working installation, but I hope you have access to a real admin then ;-)

# Import your existing projects into the new server

see http://stackoverflow.com/questions/20359936/import-an-existing-git-project-into-gitlab

First you need to create a target repository in the new server.

Second you need to change the origin of your existing github based repository or the new server:

	git remote add gitlab url-to-gitlab-repo
	git push gitlab master

