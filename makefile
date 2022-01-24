DEF=
SRCS=stringManipulation.m
LDFLAG= -framework Foundation

.PHONY: all
all:
	clang $(DEF) $(SRCS) $(LDFLAG)


.PHONY: clean
clean:
	ls | grep -E -v "\.m$$|\.h$$|makefile|README.md" | xargs -t rm #The 2nd $ following the 1st $ is to escape the 1st $ as $ is interpreted as variable expansion like $(hoge).
