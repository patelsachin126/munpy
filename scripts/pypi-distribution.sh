#!/bin/bash

# install latest version of the build package:
python3 -m pip install --upgrade build

# commands within the pyproject.toml directory:
python3 -m build

# generation of the dist subdirectory:
# dist/munpy-0.0.0-py3-none-any.whl
# dist/munpy-0.0.0.tar.gz

# create pypi api token: https://test.pypi.org/manage/account/#api-tokens

# upload distribution archives
python3 -m pip install --upgrade twine

python3 -m twine upload dist/*
