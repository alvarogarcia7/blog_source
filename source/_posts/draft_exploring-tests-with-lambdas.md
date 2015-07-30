---
published: false
layout: post
title: "Exploring tests with lambdas in java 8"
date: 2015-07-30 13:04:10 +0200
comments: true
categories: 
  - sample
  - draft
  - java
  - lambda
  - test
  - exploration
---

```
@Test
public void log_when_sending_greeting_letters() {

	sut.sendLetter(mock(GreetingLetter.class));

	verify(logger).sentGreetingLetter();
}

@Test
public void log_when_sending_love_letters() {

	sut.sendLetter(mock(LoveLetter.class));

	verify(logger).sentLoveLetter();
}
```

and the production code:

```
@Override
public void sendLetter(GreetingLetter letter) {
	logger.sentGreetingLetter();
	// more business logic
}

@Override
public void sendLetter(LoveLetter letter) {
	logger.sentLoveLetter();
	// more business logic
}
```
