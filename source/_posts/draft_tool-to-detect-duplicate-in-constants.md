---
published: false
categories:
  - sample
  - tool
  - java
  - duplicate
  - gmaur
  - library
---

## Tool to find duplicate values in constants

Imagine having this java class:

```java
private static class RepeatedConstants {
    public static final String A = "A";
    public static final String A_1 = A;
    public static final String A_2 = "A";

    public static final Integer _3 = 3;
    public static final Integer THREE = 3;
}
```

I wanted to remove the repeated values in the constants, in an automatic way, because the file was big (> 4000 constants). A way of doing this is basing the differences on the values, directly. To do this, remove all text that is not a value:

find what, regex mode: ``^.*=\s*(.*);``
replace with: $1

Explanation:

  * ``^.*=\s*``: any character before the equal sign. Any whitespace right after it.
  * ``(.*);``: capture everything that is before the semicolon (;)

You end up with this:

```
"A"
A
"A"

3
3
```
Copy it to ``a.txt``, ``sort`` it and ``uniq`` it (to remove duplication):

```bash
cat a.txt | sort | uniq > uniq.txt
```

then sort the non-uniq version:

```bash
cat a.txt | sort > sorted.txt
```

and diff among them, to find the repeated values:

```bash
diff sorted.txt uniq.txt

3,4d2
< "A"
< 3
```

These are the repeated values. The variable ``    public static final String A_1 = A;`` was not caught by this as it only has the same value in execution, not staticly.

For this, at Gmaur, we have developed a small [module to detect duplicates](https://github.com/GMaur/java-duplicates-detector). The main code is this:

```java
public class RepeatedFinder {

  private final Class aClass;

  public RepeatedFinder(Class aClass) {
    this.aClass = aClass;
  }

  public MultiMap findDuplicates() throws IllegalAccessException {
    return generateMapFromValueToVariables(aClass).valuesWithMoreThanOneVariable();
  }

  private ValueToNameRepository generateMapFromValueToVariables(Class<?> clazz) throws IllegalAccessException {
    ValueToNameRepository valueToNames = new ValueToNameRepository();
    Field[] fields = clazz.getDeclaredFields();
    Object object = new Object();
    for (Field field : fields) {
      Object value = field.get(object);
      valueToNames.add(value, field.getName());
    }
    return valueToNames;
  }
```

The tests and the source code can be found here: https://github.com/GMaur/java-duplicates-detector

Hope you enjoy it, as much as we have enjoyed writing it!

Any feedback is welcome.
