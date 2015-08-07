---
layout: post
title: "Multiple return values in a Mockito Stub"
date: 2015-08-07 11:31:19 +0200
comments: true
categories: 
  - mockito
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
