---
categories:
- draft
- java
- lambda
- exploration
- client
comments: true
date: 2015-07-30T13:04:10Z
title: Exploring Testing with Java 8 Lambdas
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

Note: this is an adapted code, so the business logic is not complete and seems simple.

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

Later, in the dojo, [Manuel](https://twitter.com/@trikitrok) and I have refactored this a little bit more. Source code is [here](https://github.com/alvarogarcia7/spike-lambda-testing/tree/8e3dbecd91e1ead33c5b3f6560e2a786c36b0de9)

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

Later, we have created a simpler functional DSL for the logging, joining the ``act`` and ``verify`` into an object called ``Check``

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
		mailSenderLogs(whenSendingAGreetingLetter());
	}

	@Test
	public void log_love_letter() {
		mailSenderLogs(whenSendingALoveLetter());
	}

	private Check whenSendingALoveLetter () {
		return new Check(
			(MailSender sut) -> sut.send(letter(LoveLetter.class)),
			EventLogger::sentLoveLetter
		);
	}

	private void mailSenderLogs (Check check) {
		check.checkFor(mailSender, eventLogger);
	}

	private Check whenSendingAGreetingLetter () {
		return new Check(
			(MailSender sut) -> sut.send(letter(GreetingLetter.class)),
			EventLogger::sentGreetingLetter
		);
	}

	private <T> T letter (final Class<T> typeOfLetter) {
		return mock(typeOfLetter);
	}
}
```

and the ``Check``, just a placeholder for two ``Consumer``s:

```java
public class Check {

	private final Consumer<MailSender> act;
	private final Consumer<EventLogger> verify;

	public Check (final Consumer<MailSender> act, final Consumer<EventLogger> verify) {
		this.act = act;
		this.verify = verify;
	}

	public void checkFor(MailSender mailSender, EventLogger eventLogger) {
		act.accept(mailSender);
		verify.accept(eventLogger);
	}
}
```

## Comparison

Comparison between the original form and the three refactored forms of the test:

```java
@Test
public void log_when_sending_greeting_letters() {

	sut.send(mock(GreetingLetter.class));

	verify(logger).sentGreetingLetter();
}
```

This reads like a classical JUnit tests, using the interaction (with mocks).

```java
@Test
public void log_greetings_letter() {
	arrange = (MailSender sut) -> sut.send(mock(GreetingLetter.class));

	verify = EventLogger::sentGreetingLetter;

	assertAndVerify();
}
```

This is the first step towards more cohesion, at the cost of readability. You save the verify at the end, but the repeated method ``assertAndVerify`` is still present.

```java
@Test
public void log_greetings_letter() {
	checkThat(aLoggingLine().forA(greetingLetter()).wasLoggedWhen(aGreetingLetterWasSent()));
}
```

This one reads more like a classical DSL, but is harder to read compared to a classical test.

```java
@Test
public void log_greetings_letter() {
	mailSenderLogs(whenSendingAGreetingLetter());
}
```

This one reads more like a business requirement.

## Other

Other ideas we have tested:

```java
Builder.aNew().sendGreetingLetter()

assertAndVerifyThat(
	theLoggingLine()
		.for(aGreetingLetter())
		.isLoggedWhen(greetingLetterIsSent()
	)
);

public Consumer<MailSender> aGreetingLetter(){
	return (MailSender sut) -> sut.sendGreetingLetter(mock(GreetingLetter.class));
}

public Consumer<EventLogger> greetingLetterIsSent(){
	return EventLogger::sentGreetingLetter;
}
```

```java
assertAndVerifyThat(
	theLoggingLine()
		.for(
			(MailSender sut) -> sut.sendGreetingLetter(mock(GreetingLetter.class))
		)
		.isLoggedWhen(EventLogger::sentGreetingLetter)
	)
);
```

```java
public void assertAndVerifyThat(TestContext testContext){
	testContext.assert();
	testContext.verify();
}
```