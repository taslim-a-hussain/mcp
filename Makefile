mcp:
	gcc -g -o mcp mcp.c
clean:
	rm -f mcp
tar:
	@read -p "version? : " VERSION \
	&& tar --exclude-vcs --exclude='.vscode' -czvf ../mcp-$${VERSION}.tar.gz .
install:
	mkdir -p $(DESTDIR)/usr/bin
	install -m 0755 mcp $(DESTDIR)/usr/bin/mcp 
remove:
	rm -f bin/mcp