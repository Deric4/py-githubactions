.PHONY: clean-tox clean-build clean-py

help:
	@echo "clean-build - remove build artifacts"
	@echo "clean-py - remove Python file artifacts"
	@echo "clean-tox - remove tox file artifacts"
	@echo "clean - remove all file artifacts"

clean: clean-tox clean-build clean-py

clean-tox:
	rm -rf .tox/

clean-build:
	rm -rf build/
	rm -rf dist/
	rm -rf src/*.egg-info
	rm -rf .eggs

clean-py:
	find . -type f -name "*.py[co]" -delete
	find . -type d -name "__pycache__" -delete
