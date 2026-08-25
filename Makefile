CC := xcrun clang
CFLAGS := -fobjc-arc -Wall -Wextra -framework Foundation

.PHONY: run clean
run: tagged-pointer-demo
	./tagged-pointer-demo
tagged-pointer-demo: Sources/main.m
	$(CC) $(CFLAGS) $< -o $@
clean:
	rm -f tagged-pointer-demo
