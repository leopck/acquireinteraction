all:
	cd /home/phoongst/vigil/acquireinteraction
	echo "Starting Acquire Me2!"
	python /home/phoongst/vigil/acquireinteraction/main.py
	make git


git:
	cd /home/phoongst/vigil/acquireinteraction
	git add .
	git commit -m "Implementing basic functionality" -s

git-rebase:
	cd /home/phoongst/vigil/acquireinteraction
	git reset --soft HEAD~`git rebase --autosquash | wc -l`
	STORE1=`git diff | grep + | grep \# | cut -d# -f2`
	if [ -z "$(STORE1)" ]; then
		git
		git-rebase
	else
		git
	fi
	
	