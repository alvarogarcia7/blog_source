---
categories:
- '2024'
- boilerplate
- github
- july
- kata
- makefile
- python
- repository
- study
date: 2024-07-28T10:03:01+04:00
title: Python 3 Boilerplate for Non-Productive environments (e.g., Kata, Study)
url: /blog/2024/07/28/python-3-boilerplate/
---

I have created a Python 3 boilerplate for non-productive environments. It can be found here: <https://github.com/alvarogarcia7/python-boilerplate>

## Main features
Its main features are:
1. It can be run locally (local python) or in a docker container (official docker image)
2. It has a [Makefile](https://github.com/alvarogarcia7/python-boilerplate/blob/master/Makefile) with the most common commands to drive the project. Also, other makefiles in [this folder](https://github.com/alvarogarcia7/python-boilerplate/tree/master/makefiles)
3. Batteries included: mypy, pytest, pre-commit.
4. Permissive license: MIT. The updated version is [here](https://github.com/alvarogarcia7/python-boilerplate/blob/master/LICENSE)
5. Currently, it is using python 3.13
6. Uses [`uv`](https://docs.astral.sh/uv/) to manage dependencies and project

## Usage

1. Clone the repository under a new project name. Either with Downloading the ZIP file or with git clone.
2. If present, remove the `.git` folder and create a new one.
3. Start adding features
4. Push to a new repository of your own.

## Limitations

Limitations:
1. It is not a template, but a starting point. You will need to change the name of the project, the name of the package, and the name of the module
2. It is not a production-ready project. It is intended for katas, study, or similar non-productive environments.


## See also

There are other boilerplate repositories [here](https://github.com/alvarogarcia7?tab=repositories&q=boilerplate&type=&language=&sort=)

## Other

Note: The views expressed in this repository are my own and do not necessarily reflect the views of my employers (past, present, or future).
