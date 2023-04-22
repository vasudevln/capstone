setup:
	python3 -m venv ~/.devops
	source ~/.devops/bin/activate

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203,W1202 app.py

all: install lint
