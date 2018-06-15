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

