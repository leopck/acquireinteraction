all:
	cd /home/leock/vigil/acquireinteraction
	echo "Starting Acquire Me2!"
	python /home/leock/vigil/acquireinteraction/main.py


git:
	cd /home/leock/vigil/acquireinteraction
	git add main.py
	git commit -m "Implementing basic functionality" -s

git-rebase:
	cd /home/leock/vigil/acquireinteraction
	git reset --soft HEAD~`git rebase --autosquash | wc -l`
	STORE1=`git diff | grep + | grep \# | cut -d# -f2`
	if [ -z "$(STORE1)" ]; then
		git
		git-rebase
	else
		git
	fi
	
	