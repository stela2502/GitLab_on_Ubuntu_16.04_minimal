all:
	$(MAKE) noBug || $(MAKE) errorTag
	fixNginx
noBug:
	sudo apt install --yes pkg-config byobu cmake libmysqlclient-dev automake autoconf autogen
	sudo apt install --yes gitlab
errorTag:
	## workaround from https://bugs.launchpad.net/ubuntu/+source/gitlab/+bug/1574349
	( cd /usr/share/gitlab/ && sudo bundle )
	sudo apt install --yes gitlab
fixNginx:
ifneq ("$(wildcard /etc/nginx/sites-available/default)","")
	sudo rm /etc/nginx/sites-available/default
endif
