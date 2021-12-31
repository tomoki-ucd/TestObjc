clean:
	ls | grep -E -v "\.m$$|makefile" | xargs -t rm
