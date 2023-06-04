install:
	pip3 install pipenv

install-dependencies:
	pipenv install --system

sync: # install dependencies based on Pipfile.lock
	pipenv sync
lock: # locks dependencies based on Pipfile
	pipenv lock
lint: # checks formatting of code
	pipenv run pylint main.py module/
test: # tests code with pytest
	pipenv run pytest tests
shell:
	pipenv shell
list-deps: # lists the dependencies of project using lock file
	pipenv requirements
wheel:
	python3 setup.py sdist
