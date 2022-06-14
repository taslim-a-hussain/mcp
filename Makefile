mcp:
	gcc -g -o mcp mcp.c
clean:
	rm -f mcp
tar:
	@read -p "version? : " VERSION \
	&& mkdir -p mcp-$${VERSION} && cp mcp.c Makefile LICENSE mcp-$${VERSION} \
	&& tar -czvf release/mcp-$${VERSION}.tar.gz mcp-$${VERSION} \
	&& rm -r mcp-$${VERSION}
install:
	mkdir -p $(DESTDIR)/usr/bin
	install -m 0755 mcp $(DESTDIR)/usr/bin/mcp 
remove:
	rm -f $(DESTDIR)/usr/bin/mcp