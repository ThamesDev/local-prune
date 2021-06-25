local-prune:
	@echo 'Compiling ...'
	@shc -f local-prune.sh
	@mv local-prune.sh.x local-prune
	@rm local-prune.sh.x.c
install: local-prune
	@echo 'Installing ...'
	@install -m 0755 local-prune /usr/bin
