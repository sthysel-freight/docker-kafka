# Kafka in Docker

![](pics/kafka.jpg)


	One of the first signs of the beginning of understanding is the wish to die.
	-- Kafka


Provides Kafka and Zookeeper in Docker.

[![Codefresh build status]( https://g.codefresh.io/api/badges/build?repoOwner=sthyselfreight&repoName=docker-kafka&branch=master&pipelineName=docker-kafka&accountName=sthysel&type=cf-1)]( https://g.codefresh.io/repositories/sthyselfreight/docker-kafka/builds?filter=trigger:build;branch:master;service:58dbceb7d09aab0100c70825~docker-kafka)


The main hurdle of running Kafka in Docker is that it depends on Zookeeper.
This container runs both Zookeeper and Kafka in the same container. This means:

* No dependency on an external Zookeeper host, or linking to another container
* Zookeeper and Kafka are configured to work together out of the box
* This is not a prod container, it is intended to be used for development.


A test repo for trying out using Avro as message packer and Kafka as
transport. These would be alternatives to HTTP Post messages and NiFi.


# Kafka in docker

Use the included docker-compose wiring to stand up a kafka cluster to
play with, in ./docker:

```commandline
$ docker-compose up
```

Be sure to export `KAFKA\_HOST=192.168.1.20` everywhere.

Use the helper scripts to make a few topics:

``` bash
./maketopic.sh parravis
./maketopic.sh wortel
./maketopic.sh beeseiers
```

List them:

``` bash
$ ./listtopics.sh 
parravis
wortel
beeseiers
```

Add some messages to a topic:

``` bash
$ ./addmessage.sh wortel
If I shall exist eternally, how shall I exist tomorrow?
A man of action forced into a state of thought is unhappy until he can get out of it.
One of the first signs of the beginning of understanding is the wish to die.
