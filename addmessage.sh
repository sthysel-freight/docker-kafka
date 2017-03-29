docker-compose run kafka kafka-console-producer.sh --broker-list ${KAFKA_HOST}:9092 --topic $1
