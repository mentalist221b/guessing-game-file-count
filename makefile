all: guessinggame.sh

	echo "#Number of files guesser script" > README.md
	echo "Last make run : " >> README.md
	date >> README.md
	echo "Number of lines in guessinggame.sh : " >> README.md
	wc -l guessinggame.sh|cut -d " " -f1 >> README.md
