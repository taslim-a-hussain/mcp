mcp:
	gcc -g -o mcp mcp.c
clean:
	rm -f mcp
tar:
	@read -p "version? : " VERSION \
	&& tar -czvf release/mcp-$${VERSION}.tar.gz mcp.c Makefile LICENSE
install:
	mkdir -p $(DESTDIR)/usr/bin
	install -m 0755 mcp $(DESTDIR)/usr/bin/mcp 
remove:
	rm -f $(DESTDIR)/usr/bin/mcp