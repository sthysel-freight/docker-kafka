# Kafka in Docker

Provides Kafka and Zookeeper in Docker.


The main hurdle of running Kafka in Docker is that it depends on Zookeeper.
This container runs both Zookeeper and Kafka in the same container. This means:

* No dependency on an external Zookeeper host, or linking to another container
* Zookeeper and Kafka are configured to work together out of the box
* This is not a prod container, it is intended to be used for development.


