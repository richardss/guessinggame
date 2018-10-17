create_readme.md:
	touch README.md
	echo "# Guessing Game" >> README.md
	echo "##" `date` >> README.md
	echo "the number of lines of code contained in guessinggame.sh are:" >> README.md
	cat guessinggame.sh|wc -l >> README.md
