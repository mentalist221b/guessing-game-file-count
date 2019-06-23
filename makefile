all: guessinggame.sh

	echo "*Number of files guesser script*" > README.md
	echo "\nLast make run : \n" >> README.md
	date >> README.md
	echo "\nNumber of lines in guessinggame.sh : \n" >> README.md
	wc -l guessinggame.sh|cut -d " " -f1 >> README.md
