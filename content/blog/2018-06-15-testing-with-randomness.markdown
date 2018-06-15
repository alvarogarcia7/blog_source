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



