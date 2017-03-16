---
categories:
- trello 
- automation
- script
- code
- tool
comments: true
date: 2017-03-16T00:36:19Z
title: Modifying titles in a Trello Board
---

A teammate and I have created a [small tool to modify the titles of the trello card in a trello board][code].

## Technical description

It works by applying a function to the existing title (because we wanted to remove a prefix from the existing title).

The modification is done, not through the API, but simulating user interaction:

  * Click to edit the card
  * Input the new title
  * Save

The full code is available [here][code]

## Conclusion

This has been a great example of working with legacy code, as the tools to work with the existing product are not the ones you would like to have and an imaginative solution provides a way out of the tar pit.

[code]: https://github.com/alvarogarcia7/javascript-simple-sessions/tree/master/trello-cards

