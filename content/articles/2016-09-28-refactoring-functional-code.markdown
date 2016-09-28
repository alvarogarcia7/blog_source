---
published: false
site:
- breadcrumbs
comments: true
date: 2016-09-28T20:36:50Z
title: Refactoring functional code
---

Original code:

```javascript
function filterTokens (rawTokens) {
  const cleanedTokens = rawTokens.map(token => (token.length && token[0] === '-') ? token.substring(1) : token)
  return cleanedTokens.filter(token => token !== '' && stopWordsArray.indexOf(token) === -1)
}
```
