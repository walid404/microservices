install:
	#install command
	pip install --upgrade pip &&\
			pip install -r requirements.txt

format:
	#format code
	black */?*.py

lint:
	#flake8 or pylint
	pylint --disable=R,C */?*.py

test:
	#test
	python -m pytest -vv --cov=mylib test_logic.py

build:
	#build container

deploy:
	#deploy

all: install lint test build deploy