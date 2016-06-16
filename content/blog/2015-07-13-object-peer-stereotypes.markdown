---
categories:
- goos
- object-peer-stereotype
- dependency
- notification
- adjustment
comments: true
date: 2015-07-13T07:36:14Z
title: Object Peer Stereotypes
---

>We categorize an object's peers (loosely) into three types of relationship. An object might have:
>
> * Dependencies: Services that the object requires from its peers so it can perform its responsibilities. The object cannot function without these services. It should not be possible to create the object without them. For example, a graphics package will need something like a screen or canvas to draw on--it doesn't make sense without one.
> * Notifications: Peers that need to be kept up to date with the object's activity. The object will notify interested peers whenever it changes state or performs a significant action. Notifications are "fire and forget"; the object neither knows nor cares which peers are listening. Notifications are so useful because they decouple objects from each other. For example, in a user interface system, a button component promises to notify any registered listeners when it's clicked, but does not know what those listeners will do. Similarly, the listeners expect to be called but know nothing of the way the user interface dispatches its events.
> * Adjustments: Peers that adjust the object's behavior to the wider needs of the system. This includes policy objects that make decisions on the object's behalf (the Strategy pattern in [Gamma94]) and component parts of the object if it's a composite. For example, a Swing JTable will ask a TableCellRenderer to draw a cell's value, perhaps as RGB (Red, Green, Blue) values for a color. If we change the renderer, the table will change its presentation, now displaying the HSB (Hue, Saturation, Brightness) values.

Source is Growing Object-Oriented Software, Guided by Tests > Chapter 6, Object-Oriented Style > Object Peer Stereotypes, page 52
 
  