---
categories:
- maven
- protip
- jitpack
comments: true
date: 2015-07-30T23:21:18Z
title: Packing your own maven dependencies
url: /blog/2015/07/30/packing-your-own-maven-dependencies/
---

Lately, I've found myself repeating always the same dependencies for my pet projects and katas. Usually, I prefer maven to hold my java dependencies, organized in a java project.

This is how most of them look like:

```xml
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
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

Now, the dependency versions and plugin configuration is repeated in all the projects, which is plenty of repetition.

## Enter JitPack.io

With the tool [JitPack.io](https://JitPack.io), you can generate your own dependencies. A guide on how to use it can be found [here](https://jitpack.io/docs/)

I've published my own java dependency (originally [a github release](https://github.com/alvarogarcia7/java-parent/releases/tag/v0.0.1))

A ``pom.xml`` in the new style is [here](https://github.com/alvarogarcia7/spike-lambda-testing/blob/master/pom.xml):

```xml
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId>com.example.spike</groupId>
    <artifactId>lambdatesting</artifactId>
    <version>0.0.1-SNAPSHOT</version>

    <parent>
        <groupId>com.github.alvarogarcia7</groupId>
        <artifactId>java-parent</artifactId>
        <version>v0.0.1</version>
    </parent>

    <repositories>
        <repository>
            <id>jitpack.io</id>
            <url>https://jitpack.io</url>
        </repository>
    </repositories>

    <dependencies>
        <dependency>
            <groupId>com.github.alvarogarcia7</groupId>
            <artifactId>java-parent</artifactId>
            <version>v0.0.1</version>
            <type>pom</type>
        </dependency>

        <dependency>
            <groupId>org.hamcrest</groupId>
            <artifactId>hamcrest-all</artifactId>
        </dependency>

        <dependency>
            <groupId>junit</groupId>
            <artifactId>junit</artifactId>
        </dependency>

        <dependency>
            <groupId>org.mockito</groupId>
            <artifactId>mockito-all</artifactId>
            <scope>test</scope>
        </dependency>
    </dependencies>
```

It does not need the plugin configuration nor the dependency versions. The downside is that it needs to be as the ``parent pom``.

## Acknowledgments

Thanks to Manuel for encouraging me to write this article