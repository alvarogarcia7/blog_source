---
categories:
- aws-kinesis
- aws
- ciberado
- workshop
- workshop-notes
- notes
comments: true
date: 2016-07-28T19:28:19Z
title: AWS Kinesis Zombieland
---

I attended a workshop on AWS Kinesis, called [AWS Kinesis Zombieland][workshop] by [Javi Moreno][ciberado].

Here my notes:

AWS Kinesis Zombieland

 * muy importante escoger bien la clave de particionado (id de shard)
 * KPL librería de kinesis que te permite hacer batching, timeout, ...
     - la otra se llama KCL.
     - KCL permite mantener estado
 * cuando te pidan una app de big data, pregunta para qué lo quieren, lo mismo que con cualquier proyecto de software
 * latitud = Y, longitud = x
 * el canal se llama stream, la capacidad se llama shard
     - el shard sólo permite 5 lecturas por segundo, 2MB/s
 * usar el shard como buffer
 * usar la clave de particionado como algoritmo de agregación
 * cada vez que tienes una tabla en dynamodb, tienes que poner una alerta de throughput
 * nota: lo que no puedes hacer es guardarlos todos y luego procesarlo. no tienes potencia para todo eso

Preguntas:

  * ¿cómo se calcula el id del shard?
   
[workshop]: http://capside.com/event/aws-kinesis-zombieland/
[ciberado]: https://twitter.com/ciberado
