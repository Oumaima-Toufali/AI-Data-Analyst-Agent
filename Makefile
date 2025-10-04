VENV = .venv

.PHONY: all venv install test clean

all: venv install test

venv:
	if not exist $(VENV) (python -m venv $(VENV))

install: venv
	$(VENV)\Scripts\python -m pip install --upgrade pip
	if exist requirements.txt ($(VENV)\Scripts\pip install -r requirements.txt)

test:
	$(VENV)\Scripts\pytest --maxfail=1 --disable-warnings -q

clean:
	rmdir /s /q $(VENV)
