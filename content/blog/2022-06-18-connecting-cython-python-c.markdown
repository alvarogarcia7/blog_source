---
categories:
  - binding
  - cython
  - python
  - investigation
  - foreign-function-interface
  - ffi
  - generate-kat-core
comments: true
date: 2022-06-18T13:00:00Z
title: "Connecting from Python to C, using Cython"
url: /blog/2022/06/18/connecting-cython-python-c/
---

# Connecting from Python to C, using Cython

Have a look at the `generate-kat-core` repo. At the time of writing, it's not open-source yet.

## Takeaways

### Automate the creation of the library

Create a make goal to:

1. Copy the library `LIBRARY` from its origin to its destination
1. Compile the cython code
1. Execute the above when executing the test goal (to always have an up-to-date version when committing)

If needed, in PyCharm, require the test configuration to execute the make goal first (as a prerequisite)

```
ORIGIN_PROJECT:=.
ORIGIN:=${ORIGIN_PROJECT}/binaries

DESTINATION:=.

all: clean list copy clean-post-copy

list:
	ls -d $(shell realpath ${ORIGIN}) || true
	find ${ORIGIN} -iname "*\.a"
.PHONY: list

clean:
	rm -f ${DESTINATION}/*a ${DESTINATION}/*h
.PHONY: clean

copy:
	cp ${ORIGIN}/lib/libLIBRARY*.a ${DESTINATION}/libLIBRARY.a
	cp -R ${ORIGIN}/include/ ${DESTINATION}
.PHONY: copy

clean-post-copy:
	rm -f *.zip
	rm -rf ${ORIGIN}
.PHONY: clean-post-copy
```

### Use the `*.pyx` files to connect Python to the C functions

You can use the `*.pyx` files to define the functions that will be called from Python. The `*.pyx` files are Cython
files that can be compiled to C.

In these `*.pyx` files, you can define the glue code that will call the C functions.

As such, we write test code for those `*.pyx` files, to ensure the C functions are called correctly. Those tests are
end-to-end, allowing no test doubles.

### Introduce restrictions in the glue code

1. Because C requires the size of the array, you can inject a python array (e.g., `bytes` or `bytearray`). Python will
   know the size of the array, and you can pass it to the C function:

```python
def my_function(data: bytearray):
    size = len(data)
    c_function(c_data, size)
```

2. If the C function requires a specific size (e.g., 4 bytes), you can check the size in the Python function:

```python
def my_function(data: bytearray):
    assert len(data) == 4, f"The data must be 4 bytes long. Currently = {len(data)} bytes"
    c_function(c_data) # size can be optional if it's mandatory to be 4
```

3. Bytes are immutable, while bytearray is mutable.

When a `bytes` is passed to a C function, it's passed as a pointer to the data.

Be careful when modifying the data in the C function. If you need to change the data, use a `bytearray`.

## Debugging

To remove defects in the `*.pyx` files, convert once ("cythonize").

## Links

Look around [here](https://github.com/alvarogarcia7/link-collection/blob/master/data/links.rec#L2545), with the tag
generate-kat-core

### [Cython: Extension types](https://cython.readthedocs.io/en/latest/src/userguide/extension_types.html#existing-pointers-instantiation)

How to create a Cython class that can wrap a cdef field.

Tags: cython, generate-kat-core, python, integration, binding

Id: eaf09838-ec8c-11ec-b5c3-0242ac110003
Read: Wed, 15 Jun 2022 09:24:12 +0000

### [Cython: Connecting function pointers in Python](https://stackoverflow.com/questions/21876210/cython-how-to-expose-void-and-function-pointer-in-struct)

Tags: stack-overflow, function-pointer, python, cython, generate-kat-core, integration, binding

Id: 143138ce-ec8d-11ec-aa16-0242ac110003
Read: Wed, 15 Jun 2022 09:25:21 +0000

### [Cython: Defining fields in a Cython.cclass](https://cython.readthedocs.io/en/latest/src/tutorial/cdef_classes.html#id8)

Pointing to "WaveFunction" (#id8).

Examples of how a @cython.cclass with attributes gets converted to C.

Tags: cython, binding, generate-kat-core, cython.cclass, python, integration

Id: 4c981052-ec8d-11ec-a7c9-0242ac110003
Read: Wed, 15 Jun 2022 09:26:56 +0000

### [Cython: Using a struct from a different library](https://stackoverflow.com/questions/46509558/using-a-struct-from-a-different-library-in-cython)

Tags: cython, struct, integration, generate-kat-core, python, binding

Id: 6356b910-ec8d-11ec-8ba6-0242ac110003
Read: Wed, 15 Jun 2022 09:27:34 +0000



