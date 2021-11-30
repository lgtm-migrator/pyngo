help:
	@echo "Targets:"
	@echo "    make test"
	@echo "    make lint"
	@echo "    make clean"
	@echo "    make clean-test"

test:
	pytest --cov=pyngo

lint:
	pre-commit run --all-files

clean:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +

clean-test:
	rm -fr .tox/
	rm -f .coverage
	rm -fr htmlcov/
	rm -fr .pytest_cache
