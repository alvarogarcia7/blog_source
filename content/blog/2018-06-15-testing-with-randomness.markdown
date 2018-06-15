---
categories:
- testing
- randomness
- tdd
- java
- code
- snippet
published: false
date: 2018-06-15T9:03:19Z
title: Testing a component that includes randomness
url: /blog/2018/06/15/testing-component-randomness/
---

We have been tasked with designing a component to generate secrets for two-factor authentication (2FA), to ensure that the you also own that other 'channel'.

It has to be secure enough to pass to verify a user, meaning no other user should be able to impersonating another one by guessing the secret.

A first solution that he have implemented is to provide a 6-digit pin code.

The solution (in java) is straightforward: get a `Random` to generate `int`s for you.

```java
public class PinCodeFactory {
    private Random secureRandom = new SecureRandom();

    public PinCode aNewPinCode () {
        return new PinCode(secureRandom.nextInt(1_000_000));
    }
}

public class PinCode {
    public final String value;

    public PinCode (final String value) {
        this.value = value;
    }
}
```

Note: this is not the final solution; it does not include package, imports; might not even compile. Take it as pseudo-code.

Now that we this "obvious implementation" in mind, how can we test drive it?

Let's start with the requirements:

  * the numbers are always six digits
  * they should be pseudo-random

We can test the first by taking one of them and verifying that it has six digits.

### First requirement: type of pin code

The problem with that is that the SecureRandom gives random data. Now, the test will be passing, but later in the future, the build will break as this implementation has (some) defects. If you keep generating pin codes, you will get one as "123", as per the definition of the `nextInt` method.

Easy. You add a base amount to always make it in the six digits. But, are you affecting the distribution of the pseudo-random generator? I'm not even sure. To make it easier, let's pad the numbers with zeros on the left:

```java
@Test
public void the_numbers_are_left_padded_with_zeros () {
    final HashSet<String> pincodes = generatePinCodes(100);
    for (final String pincode : pincodes) {
        assertThat(pincode.length(), is(6));
    }
}

@Test
public void the_numbers_do_not_contain_spaces () {
    final HashSet<String> pincodes = generatePinCodes(100);
    for (final String pincode : pincodes) {
        assertThat(pincode.contains(" "), is(false));
    }
}
```

Now that these tests are failing, I can focus on finding a simple implementation that satisfies them.

A passing solution:

```java
package com.example;

import com.example.Pincode;

import java.net.URI;
import java.security.SecureRandom;
import java.util.Random;

public class PinCodeFactory {
    private Random secureRandom = new SecureRandom();

    public PinCode aNewPinCode () {
        return new PinCode(String.format("%06d", random.nextInt(1_000_000)));
    }
}
```

But, if you execute these tests long enough, it will fail. Because of the underlaying randomness of the code. We don't want to modify the design of this class, as we started with "wishful programming", specifying the desired public API, to later fill the implementation details.

A possible solution to this randomness is to consider the random a 'setting' [aka policy](http://www.mockobjects.com/2006/10/different-kinds-of-collaborators.html) that I can later override. But only for the test. We don't want to make the API more complicated, so we will offer a protected method for 'friends' to use:

```java
package com.example;

import com.example.Pincode;

import java.net.URI;
import java.security.SecureRandom;
import java.util.Random;

public class PinCodeFactory {

    private Random random;

    public PinCodeFactory () {
        random = new SecureRandom();
    }

    public PinCode aNewPinCode () {
        final String payload = String.format("%06d", random.nextInt(1_000_000));
        final PinCode pinCode = new PinCode(payload);
        return pinCode;
    }

    protected void setGenerator (final Random generator) {
        this.random = generator;
    }
}
```

(Note: this is the final version)

(Note: in java, the `SecureRandom` implements the same API as `Random` --in fact it is a child class-- so we prefer accepting the parent class.)

In this way, the test can always set the random seed to a fixed value. Therefore, the numbers will be stable and the behavior is no longer random, but controlled. 

This is just one way how you can test components that have randomness: eliminating it without affecting the public API.

### Second requirement: the pin codes don't repeat

Even if this requirement cannot be met with enough requests (because with enough requests, you will repeat a six-digits code), finding no repeated codes in 100 consecutive pin codes is enough. The user has to input the exact code they received, so the chance of repetition is quite low.

```java
@Test
public void there_are_no_repeated_with_the_given_seed () {
    final int desiredProofSize = 100;
    final HashSet<String> pincodes = generatePinCodes(desiredProofSize);
    assertThat(pincodes.size(), is(desiredProofSize));
}
```

This test is passing from the beginning with the fixed seed `1L`. But, if you enlarge the `desiredProofSize` to 1000, it does not pass anymore.

### A note about process

We did not get much value of test-driving (TDD) this code, as the knew the desired API from the beginning, we had a clear implementation in mind and only a few cases left to iron out. Just test-first was enough in this case.

## Conclusion

One way how you can test components that have randomness: eliminating it.

Do not use TDD (or any other tool) as an end in itself. Use it as a tool.

## Appendix

All code can be found [here](https://gist.github.com/alvarogarcia7/46917d8d160d46b145de8262e3965670)

As a local copy:

```java
//File PinCode.java
package com.example;

import java.util.Objects;

public class PinCode {
    public final String value;

    public PinCode (final String value) {
        this.value = value;
    }

    @Override
    public boolean equals (final Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        final PinCode pinCode = (PinCode) o;
        return Objects.equals(value, pinCode.value);
    }

    @Override
    public int hashCode () {
        return Objects.hash(value);
    }

    @Override
    public String toString () {
        final StringBuffer sb = new StringBuffer("PinCode{");
        sb.append("value='").append(value).append('\'');
        sb.append('}');
        return sb.toString();
    }
}
```

```java
//File PinCodeFactory.java
package com.example;

import com.example.Pincode;

import java.net.URI;
import java.security.SecureRandom;
import java.util.Random;

public class PinCodeFactory {

    private Random random;

    public PinCodeFactory () {
        random = new SecureRandom();
    }

    public PinCode aNewPinCode () {
        final String payload = String.format("%06d", random.nextInt(1_000_000));
        final PinCode pinCode = new PinCode(payload);
        return pinCode;
    }

    protected void setGenerator (final Random generator) {
        this.random = generator;
    }
}
```

```java
//File PinCodeFactoryTest.java
package com.example;

import org.junit.Before;
import org.junit.Test;

import java.util.HashSet;
import java.util.Random;

import static org.hamcrest.core.Is.is;
import static org.junit.Assert.assertThat;

public class PinCodeFactoryTest {

    private PinCodeFactory pinCodeFactory;

    @Before
    public void setUp () {
        pinCodeFactory = new PinCodeFactory();
        pinCodeFactory.setGenerator(new Random(1L));
    }

    @Test
    public void there_are_no_repeated_with_the_given_seed () {
        final int desiredProofSize = 100;
        final HashSet<String> pincodes = generatePinCodes(desiredProofSize);
        assertThat(pincodes.size(), is(desiredProofSize));
    }

    @Test
    public void the_numbers_are_left_padded_with_zeros () {
        final HashSet<String> pincodes = generatePinCodes(100);
        for (final String pincode : pincodes) {
            assertThat(pincode.length(), is(6));
        }
    }

    @Test
    public void the_numbers_do_not_contain_spaces () {
        final HashSet<String> pincodes = generatePinCodes(100);
        for (final String pincode : pincodes) {
            assertThat(pincode.contains(" "), is(false));
        }
    }


    private HashSet<String> generatePinCodes (final int desiredProofSize) {
        final HashSet<String> pincodes = new HashSet<>();
        for (int i = 0; i < desiredProofSize; i++) {
            final String pincode = pinCodeFactory.aNewPinCode().value;
            pincodes.add(pincode);
        }
        return pincodes;
    }
}
```
