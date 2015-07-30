---
layout: post
title: "Exploring Testing with Java 8 Lambdas"
date: 2015-07-30 13:04:10 +0200
comments: true
categories: 
  - sample
  - draft
  - java
  - lambda
  - test
  - exploration
  - client
---

At a client, we were testing a simple feature, but the resulting tests had much subtle repetition:

```
@Test
public void log_when_sending_greeting_letters() {

	sut.sendGreetingLetter(mock(GreetingLetter.class));

	verify(logger).sentGreetingLetter();
}

@Test
public void log_when_sending_love_letters() {

	sut.sendLoveLetter(mock(LoveLetter.class));

	verify(logger).sentLoveLetter();
}
```

and the production code:

```
@Override
public void sendGreetingLetter(GreetingLetter letter) {
	logger.sentGreetingLetter();
	// more business logic
}

@Override
public void sendLoveLetter(LoveLetter letter) {
	logger.sentLoveLetter();
	// more business logic
}
```

So I decided to explore a bit on refactoring these tests to use lambdas and reduce repetition:

```
private MailSender sut;
private Consumer<MailSender> arrange;
private Consumer<EventLogger> verify;

@Test
public void log_greetings_letter() {
	arrange = (MailSender sut) -> sut.sendGreetingLetter(mock(GreetingLetter.class));

	verify = EventLogger::sentGreetingLetter;

	assertAndVerify();
}

@Test
public void log_love_letter() {
	arrange = (MailSender sut) -> sut.sendLoveLetter(mock(LoveLetter.class));

	verify = EventLogger::sentLoveLetter;

	assertAndVerify();
}

private void assertAndVerify() {
	arrange.accept(sut);
	verify.accept(logger);
}
```

Some comments, mine and my teammates:

  * The tests are not very readable, maybe because we're still not used to java 8 lambdas
  * ``assertAndVerify`` has multiple purposes / responsibilities
  * The gain of usability does not outweight the loss of readability

Finally, the refactor was discarded and we are using the initial version.

Note: this is an adapted code, so the business logic is not complete and seems simple.

Note: the code has not been generalized to ``sendLetter(Letter letter)`` as the invoked logger has to be different. It could be if letter invoked the logger, but this is not wanted (on-purpose constraint).