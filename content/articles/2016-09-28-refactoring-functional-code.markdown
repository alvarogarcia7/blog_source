---
published: true
site:
- breadcrumbs
comments: true
categories:
- clean-code
- functional-code
- refactoring
- refactor
- code-snippet
- snippet
date: 2016-09-28T20:36:50Z
title: Refactoring functional code
---

With my pairing mate we have refactored this piece of functional code.

Original code:

```javascript
function filterTokens (rawTokens) {
  const cleanedTokens = rawTokens.map(token => (token.length && token[0] === '-') ? token.substring(1) : token)
  return cleanedTokens.filter(token => token !== '' && stopWordsArray.indexOf(token) === -1)
}
```

Refactored code:

```javascript
function filterTokens (rawTokens) {
  const cleanedTokens = rawTokens.map(token => startsWithADash(token) ? removeDashFrom(token) : token)
  const processedTokens = cleanedTokens.filter(token => isNotEmpty(token) && isNotAStopWord(token))
  return processedTokens

  function startsWithADash (token) {
    return (token.length && token[ 0 ] === '-')
  }

  function removeDashFrom (token) {
    return token.substring(1)
  }

  function isNotAStopWord (token) {
    return stopWordsArray.indexOf(token) === -1
  }

  function isNotEmpty (token) {
    return token !== ''
  }
 }
 ```

These two codes do the same, but the second reads better, given that each small concept (e.g., ``cleanedTokens``) or operation (e.g., ``removeDashFrom``) has a name. Even the returned value, usually ``result``, has an appropiate name. The machine will optimize that variable assignment to a variable but the human reader will dig deeper only if required.

Writing functional code should not be an excuse to forget about clean code. The two are independent variables.

We have found that the second reads better than the first one, but we have reached this conclusion because we have similar values and practices. 
