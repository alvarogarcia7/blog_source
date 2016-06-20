---
categories:
- mockito
- tip
- stub
- java
comments: true
date: 2015-08-07T11:31:19Z
title: Multiple return values in a Mockito Stub
url: /blog/2015/08/07/multiple-values-in-a-mockito-stub/
---

I've been asked today how to return multiple return values from a Mockito Spy, effectively using the spy as a Stub, as well.

```java
package com.example.spike;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.is;
import static org.mockito.Mockito.spy;
import static org.mockito.Mockito.when;

import org.junit.Test;
import org.mockito.Spy;

public class DifferentReturnValues {

	@Spy
	private Spike1 spike1 = new Spike1();


	@Test
	public void spike1() {
		spike1 = spy(spike1);
		when(spike1.getBool()).thenReturn(false, true);

		assertThat(spike1.getBool(), is(false));
		assertThat(spike1.getBool(), is(true));

		assertThat(spike1.getBool(), is(true));
		assertThat(spike1.getBool(), is(true));
	}


	private class Spike1 {
		public boolean getBool() {
			return true;
		}
	}
}
```

The key line is:

```java
when(spike1.getBool()).thenReturn(false, true);
```

this makes the stubbed function to return multiple values:

```java
assertThat(spike1.getBool(), is(false));
assertThat(spike1.getBool(), is(true));
```

The last value is repeated after the last defined value:

```java
@Test
public void spike1() {
	spike1 = spy(spike1);
	when(spike1.getBool()).thenReturn(false, true);

	assertThat(spike1.getBool(), is(false));
	assertThat(spike1.getBool(), is(true));

	assertThat(spike1.getBool(), is(true));
	assertThat(spike1.getBool(), is(true));
}
```

If you want to loop over the values, you can implement it with the ``doAnswer`` method:

```java
@Test
public void spike1() {
	spike1 = spy(spike1);
	when(spike1.getBool()).thenReturn(false, true);

	final boolean[] value = {true};

	doAnswer(invocation -> {
		value[0] = !value[0];
		return value[0];
	}).when(spike1).getBool();

	assertThat(spike1.getBool(), is(false));
	assertThat(spike1.getBool(), is(true));

	assertThat(spike1.getBool(), is(false));
	assertThat(spike1.getBool(), is(true));
}
```

