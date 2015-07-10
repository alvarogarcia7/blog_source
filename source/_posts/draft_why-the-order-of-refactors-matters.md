---
published: false
categories:
  - sample
---

This is a draft sample

imagine this code:

```java
private HypothesisSet sutWith (final int input1, final int output1, final int input2, final int output2) {
	return new HypothesisSet(
			asList(
					hypothesis(output1, input1),
					hypothesis(output2, input2)));
}

private HypothesisSet sutWith (final int input, final int output) {
	return new HypothesisSet(
			asList(
					hypothesis(output, input)));
}
```

Now imagine that it is time for the refactor phase. What would you change first?
