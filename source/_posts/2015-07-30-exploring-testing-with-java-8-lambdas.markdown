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

(source code is [here](https://github.com/alvarogarcia7/spike-lambda-testing/tree/ef00a220f427900e3180dcbeec51248845446248))

```java
@Test
public void log_when_sending_greeting_letters() {

	sut.send(mock(GreetingLetter.class));

	verify(logger).sentGreetingLetter();
}

@Test
public void log_when_sending_love_letters() {

	sut.send(mock(LoveLetter.class));

	verify(logger).sentLoveLetter();
}
```

and the production code:

```java
public class MailSender {
	private final EventLogger eventLogger;

	public MailSender (final EventLogger eventLogger) {
		this.eventLogger = eventLogger;
	}

	public void send (final GreetingLetter letter) {
		// more business logic
		eventLogger.sentGreetingLetter();
	}

	public void send (final LoveLetter letter) {
		// more business logic
		eventLogger.sentLoveLetter();
	}
}
```

So I decided to explore a bit on refactoring these tests to use lambdas and reduce repetition:

```java
private MailSender sut;
private Consumer<MailSender> arrange;
private Consumer<EventLogger> verify;

@Test
public void log_greetings_letter() {
	arrange = (MailSender sut) -> sut.send(mock(GreetingLetter.class));

	verify = EventLogger::sentGreetingLetter;

	assertAndVerify();
}

@Test
public void log_love_letter() {
	arrange = (MailSender sut) -> sut.send(mock(LoveLetter.class));

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

Later, in the dojo, Manuel and I have refactored this a little bit more. Source code is [here](https://github.com/alvarogarcia7/spike-lambda-testing/tree/8e3dbecd91e1ead33c5b3f6560e2a786c36b0de9)

```java
public class MailSenderShould {

	private EventLogger eventLogger;
	private MailSender mailSender;

	@Before
	public void setUp () {
		eventLogger = mock(EventLogger.class);
		mailSender = new MailSender(eventLogger);
	}

	@Test
	public void log_greetings_letter() {
		checkThat(aLoggingLine().forA(greetingLetter()).wasLoggedWhen(aGreetingLetterWasSent()));
	}

	@Test
	public void log_love_letter() {
		checkThat(aLoggingLine().forA(loveLetter()).wasLoggedWhen(aLoveLetterWasSent()));
	}

	private void checkThat (final Check check) {
		check.checkFor(mailSender, eventLogger);
	}

	private Consumer<EventLogger> aGreetingLetterWasSent () {
		return EventLogger::sentGreetingLetter;
	}

	private Consumer<MailSender> greetingLetter () {
		return (MailSender sut) -> sut.sendGreetingLetter(mock(GreetingLetter.class));
	}

	private Consumer<MailSender> loveLetter () {
		return (MailSender sut) -> sut.sendLoveLetter(mock(LoveLetter.class));
	}

	private Consumer<EventLogger> aLoveLetterWasSent () {
		return EventLogger::sentLoveLetter;
	}
}
```

(the logger is [here](https://github.com/alvarogarcia7/spike-lambda-testing/blob/8e3dbecd91e1ead33c5b3f6560e2a786c36b0de9/src/test/java/com/example/lambdatesting/CheckBuilder.java))

Note: this is an adapted code, so the business logic is not complete and seems simple.
