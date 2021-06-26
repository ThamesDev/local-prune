local-prune:
	@gcc local-prune.c -o local-prune

install: local-prune
	@install -m 0755 local-prune /usr/bin
