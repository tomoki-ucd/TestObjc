#Do not put space nor tab after eol(end of line).

PROG = myout
CC = clang
LIB =
RELDIR = ./rel
INCDIR = ./inc
INC = -I$(INCDIR)
VPATH = ./src
OBJDIR = $(RELDIR)

CFLAGS = -Wall -g
LDFLAGS = -framework Foundation	

SRC1 = SampleClass.m
SRC2 = SampleMain.m

OBJ1 = $(OBJDIR)/$(SRC1:.m=.o)
OBJ2 = $(OBJDIR)/$(SRC2:.m=.o)

OBJS = \
$(OBJ1) \
$(OBJ2)

$(RELDIR)/$(PROG):$(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $(OBJS) $(LIB)

$(OBJ1):$(SRC1)
	$(CC) $(CFLAGS) -o $@ -c $? $(INC)

$(OBJ2):$(SRC2)
	$(CC) $(CFLAGS) -o $@ -c $? $(INC)

c:
	rm -f $(OBJDIR)/*.o
	rm -f $(RELDIR)/$(PROG)
