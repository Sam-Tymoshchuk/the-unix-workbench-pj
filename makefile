all: README.md 

README.md: guessinggame.sh makefile
	echo "# The UNIX workbench project assigment" > README.md
	date +"Date: "%D" Time: "%T"	" >> README.md 
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
