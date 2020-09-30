README.md: guessinggame.sh 
	touch README.md
	echo  "# project title: \`GUESSING GAME\`" > README.md
	echo "Time at you ran make is: *`(date +%T)`* "  >> README.md
	echo "total lines in guessinggame script :\``(cat guessinggame.sh |wc -l)`\` " >> README.md 

clean:
	@rm README.md
