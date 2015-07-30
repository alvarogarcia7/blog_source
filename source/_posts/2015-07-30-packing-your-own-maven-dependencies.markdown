---
layout: post
title: "Packing your own maven dependencies"
date: 2015-07-30 23:21:18 +0200
comments: true
categories: 
  - maven
  - protip
  - jitpack
---

Lately, I've found myself repeating always the same dependencies for my pet projects and katas. Usually, I prefer maven to hold my java dependencies, organized in a java project.

This is how most of them look like:

```xml
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <groupId>com.gmaur.legacycode</groupId>
  <artifactId>legacyutils</artifactId>
  <version>0.0.1-SNAPSHOT</version>
  
  <dependencies>
  
  	<dependency>
  		<groupId>org.hamcrest</groupId>
  		<artifactId>hamcrest-all</artifactId>
  		<version>1.3</version>
  		<scope>test</scope>
  	</dependency>
  
  	<dependency>
  		<groupId>junit</groupId>
  		<artifactId>junit</artifactId>
  		<version>4.11</version>
  		<scope>test</scope>
  	</dependency>

	<dependency>
		<groupId>org.mockito</groupId>
		<artifactId>mockito-all</artifactId>
		<scope>test</scope>
		<version>2.0.2-beta</version>
	</dependency>
  </dependencies>

  <build>
        <plugins>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-surefire-plugin</artifactId>
                <version>2.18.1</version>
                <configuration>
                    <includes>
                        <include>**/**Test.java</include>
                        <include>**/**Should.java</include>
                    </includes>
                </configuration>
            </plugin>
        </plugins>
    </build>
</project>
```

Note: the ``org.apache.maven.plugins:maven-surefire-plugin`` is to make maven execute the tests that end in ``*Should``.



