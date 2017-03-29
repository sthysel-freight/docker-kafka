docker-compose run kafka kafka-topics.sh --create --zookeeper ${KAFKA_HOST}:2181 --replication-factor 1 --partitions 1 --topic $1
