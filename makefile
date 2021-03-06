install:
	python setup.py develop
	pip install -r requirements.txt -r sandbox/requirements.txt

test:
	python setup.py develop
	pip install -r requirements.txt

release:
	python setup.py sdist upload
	python setup.py bdist_wheel --universal upload
	git push --tags

clean:
	find . -name "*.pyc" -delete
	rm -rf *.egg-info dist
