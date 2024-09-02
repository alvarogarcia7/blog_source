---
title: "Building private tools in the open"
categories:
  - tool
  - private-tool
  - separation
date: 2024-08-31T18:04:28+0400
published: false
url: /articles/2024/08/31/building-private-tools-open/
---

## Introduction

It is very common to develop private tools in private: private git repositories, private servers, private data, private
everything.

But what if you want to obtain the benefits of developing in the open while keeping your privacy?

## Context and Applicability

We have been developing tools like this. It works well, you just have to be careful on what gets committed where.

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

Another example can be seen [here](https://github.com/alvarogarcia7/freemind-exporter-formatter/blob/master/main.py#L26)

## Tips and tricks

### Keep the tool in one folder

### Keep the data in another folder

### Each folder is a different repo

## Pros and Cons

### Advantages

#### Take advantage of developing in the open, while keeping your information private

#### Testing in the open

#### Collaboration

#### Open source

### Downsides

#### Leaking about having such a tool

#### Leaking about using that technology

#### Risk of committing private data to a public repository

## Examples

### tariochbctools

> Honestly I keep the tests a bit limited in here (I have some real data based tests for some of the importers in my
> personal repo).
>
> [TarioCH](https://github.com/tarioch/beancounttools/pull/115#issuecomment-2263858194)

## Conclusion

### Separate the public and private information

### Take advantage of developing in the open, while keeping your information private
