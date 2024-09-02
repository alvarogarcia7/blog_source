---
title: "Building private tools in the open"
categories:
  - tool
  - private-tool
  - separation
  - version
  - rebase
  - repository-pattern
  - rewrite-history
date: 2024-08-31T18:04:28+0400
published: true
url: /articles/2024/08/31/building-private-tools-open/
---

## Introduction

It is very common to develop private tools in private: private git repositories, private servers, private data, private
everything.

But what if you want to obtain the benefits of developing in the open while keeping your privacy?

## Context and Applicability

We have been developing tools like this. It works well, you just have to be careful on what gets committed where.

Alternatives:

1. Keep all development hidden
2. Hide the data using git-crypt

## How to

Split the tool in two parts: the public part and the private part. This refers both to data and behavior (code).

Each one is called a version: public version and private version.

### Data

If the data has the same shape (between public and private versions), you can use the same repository to access it.

#### Repository pattern to access data

Use the repository pattern to access data. This is the same as for Production/Preproduction/Development environments.
Each has a different database, but the code is the same.

A small explanation of the Repository pattern:
> * The Repository Design Pattern is a software design pattern that acts as an intermediary layer between an
    application’s
    > business logic and data storage.
> * Its primary purpose is to provide a structured and standardized way to access, manage, and manipulate data while
    > abstracting the underlying details of data storage technologies.
> * This pattern promotes a clear separation of concerns, making software more maintainable, testable, and adaptable to
    > changes in data sources, without entangling the core application logic with data access intricacies.
> * In essence, the Repository Design Pattern is a blueprint for organizing and simplifying data access, enhancing the
    > efficiency and flexibility of software systems.
>
> https://www.geeksforgeeks.org/repository-design-pattern/

#### Same repository to access both versions of data

Given that the shape of the data is the same, you can use the same repository to access both versions of the data.

The only difference is the data itself. Hence, you cannot reference titles, ids, categories, or any other information
that is private.

A suggestion is to come up with a washed version of the data, where you replace the private information with a
placeholder. Keep the same shape:

* `int`s are still `int`s, `str`s are still `str`s
* length of data is similar
* no need to keep the same volume of data. It can get expensive to keep all that test data. A representative sample is
  enough.

### Behavior

#### common interface to access both

```python
# file ./private/data.py
def data() -> list[dict[str, str]]:
    return []
```

#### Import by name (from CLI)

```python
from __future__ import annotations

import importlib.util
import sys
from pathlib import Path
from types import ModuleType


def import_module_by_name(file_path: str) -> ModuleType:
    module_name = Path(file_path).stem
    spec = importlib.util.spec_from_file_location(module_name, file_path)
    if spec is None:
        raise ImportError(f"Cannot find module named {module_name}")
    module = importlib.util.module_from_spec(spec)
    sys.modules[module_name] = module
    spec.loader.exec_module(module)  # type: ignore
    return module


def main(path_to_validation_data: str) -> int:
    module = import_module_by_name(path_to_validation_data)
    if module is None:
        raise ImportError(f"Cannot find module named {path_to_validation_data}")

    return 0


if __name__ == '__main__':
    sys.exit(main(sys.argv[1]))
```

and you can execute it:

```bash
python3 main.py ./private/data.py  
```

Here, `./private/data.py` is the private version of the data. You can have a public version of the data, as well.

Another example can be seen [here](https://github.com/alvarogarcia7/freemind-exporter-formatter/blob/master/main.py#L26)

## Tips and tricks

1. Do not push the open version to a public repository until you're ready. Once published, you cannot take it back [^1].
2. If you commit private information by mistake, rewrite the git history so that it never shows up in the history (
   e.g., `git rebase`)
3. Create a script that checks for private information in the code and data. Run it before committing (e.g. git hook).
   You can store it in the private repository (because it has access to the private data). [^2]
4. Keep the public version in one folder, and the private version in another folder. Each folder is a different repo.

[^1]: There are scanners that look for secrets in public repositories. Once they find it, they notify the owner of the
repository ([example](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning)).
If you have secret information in a public repository, you have to assume that it has been compromised. In the case of
keys, you have to revoke them.
In the case of sensitive information, you have to assume that it has been leaked.

[^2]: A good tip here is this one: execute the checker only if the file is present.
e.g., `[ -f ./private/checker.sh ] && ./private/checker.sh`

## Pros and Cons

### Advantages

Take advantage of developing in the open, while keeping your information private:

1. Free resources in the public repository: CI/CD, code reviews, etc.
2. Testing in the open: let other people test your project, get early feedback on the project
3. Collaboration: let other people contribute to your project
4. Open source: let other people see how you work, how you solve problems; contribute to the community

### Downsides

1. Leaking about having such a tool
    1. By posting the link below, you are leaking that you have a tool to work with such information.
2. Leaking about using that technology
   1. By posting the link below, you are leaking that you are using Python to work with such information.
3. Risk of committing private data to a public repository
   1. As an example, we can see an export of private data in a public repository [here](https://github.com/tarioch/beancounttools/issues/83#issue-1562630990).
   2. The user is saying their balance is 7881.98 CHF. This is private information.

## Examples

### tariochbctools

> Honestly I keep the tests a bit limited in here (I have some real data based tests for some of the importers in my
> personal repo).
>
> [TarioCH](https://github.com/tarioch/beancounttools/pull/115#issuecomment-2263858194)

## Conclusion

1. Separate the public and private information in two different versions
2. Take advantage of developing in the open, while keeping your information private
