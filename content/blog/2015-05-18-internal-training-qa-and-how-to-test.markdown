---
categories:
- training
- internal
- internal-training
- quality-assurance
- qa
- brown-bag-session
comments: true
date: 2015-05-18T22:20:09Z
title: 'Internal training: QA &amp; how to test'
---

At a client, we've done today an internal training on "QA & how to test". In it, the most skilled person with the QA role in the dev team has explained to us some techniques and concepts for testing

## My notes

Verification vs validation: building the product right vs building the right product.

### Principles

Extracted from [ISTQB](http://www.istqb.org/):

  * testing shows presence of defects
  * exhaustive testing is impossible
  * early testing is better than later testing
  * defect clustering: areas with bigger defect ratio or more critical, etc should be tested more thoroughly
  * pesticide paradox
  * testing is context-dependent
  * absence of errors fallacy: the absence of defects does not imply perfect software. There are also problems with validation.

### Techniques

#### People-based

  * bug bashes: e.g., time-constrained
  * subject-matter expert testing
  * eat your own dogfood
  * others

#### Activity-based

  * regression
  * scripted (manual)
  * smoke
  * exploratory
  * installation
  * load
  * long sequence
  * performance

#### Coverage-based

  * menu tour: exploration based on menus (especially on websites)
  * functional and system testing
  * integration
  * logic
  * state-based

#### Requirements-based

  * Equivalence partitioning: examples in the same set are considered equivalent
  * Boundary based: there are interesting examples around and on the boundaries
  * Decision tables: truth table
  * State transition tables: state diagram

#### Risk-based

  * make a prioritized list: probability and impact
  * perform testing exploring each risk
  * after a risk disappears, another opens. Adjust your test effort to stay focused on the current crop

#### Use case tests

  * use case: a common case that represents one of your customer's cases
  * use busines language

#### Structure-based
 
  * test coverage is different than code coverage
  * test coverage is based on decision tables

#### Defining testing priorities

  * customer and contractual requirements
  * regulatory
  * experience-based
  * "Best representative"
