all: README.md

README.md:
	touch README.md
	echo "project title: guessing game" > README.md
	echo "" >> README.md
	echo "make was run on the following date and time:" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "guessinggame.sh has the following number of lines:" >> README.md
	wc -l guessinggame.sh | cut -d " " -f1 >> README.md
