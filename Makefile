local-prune:
	@echo 'Compiling ...'
	@shc -f local-prune.sh
	@mv local-prune.sh.x local-prune
	@rm local-prune.sh.x.c
install: local-prune
	@echo 'Installing ...'
	@install -m 0755 local-prune /usr/bin
	@echo 'Adding documentation'
	@sudo mkdir /usr/share/doc/local-prune/
	@sudo mv usr/share/doc/local-prune/README /usr/share/doc/local-prune/README
	@echo 'Adding metadata and icon ...'
	@sudo mv usr/share/applications/local-prune.desktop /usr/share/applications/local-prune.desktop
	@sudo mv usr/share/icons/local-prune-icon.xpm /usr/share/icons/local-prune-icon.xpm
