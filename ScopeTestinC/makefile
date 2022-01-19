COMPILER = clang
CFLAGS =
LDFLAGS =
SOURCES = scopeTestMain.c scopeTestChild1.c
OBJS = scopeTestMain.o scopeTestChild1.o
TARGET = a.out

# File-you-want-to-make (Target): files-to-depend
#	command to run

#PHONY means fake
# .PHONY: task-name
# Task-you-wan-to-execute:target-to-depend  
#	command to run

.PHONY: all
all:$(TARGET)

$(TARGET):$(OBJS) makefile
	$(COMPILER) -o $(TARGET) $(OBJS)

$(OJBS):$(SOURCES)
	$(COMPILER) -c $(SOURCES)

.PHONY: clean
clean:
	rm $(TARGET) $(OBJS)
