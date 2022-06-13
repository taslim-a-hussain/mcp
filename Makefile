mcp:
	gcc -g main.c -o bin/mcp
clean:
	rm -f bin/mcp
install:
	mkdir -p $(DESTDIR)/usr/bin
	install -m 0755 bin/mcp $(DESTDIR)/usr/bin/mcp 
remove:
	rm -f bin/mcp