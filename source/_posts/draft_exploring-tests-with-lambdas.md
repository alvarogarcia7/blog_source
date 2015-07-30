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


the tests, refactored:

```
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

Comments:

  * not very readable, maybe because we're still not used to java 8 lambdas
  * ``assertAndVerify`` has multiple purposes / responsibilities

