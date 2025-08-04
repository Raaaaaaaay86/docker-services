mysql:
	docker compose -f mysql/docker-compose.yml up -d
.PHONY: mysql

postgresql:
	docker compose -f postgresql/docker-compose.yml up -d
.PHONY: postgresql

redis-cluster:
	LOCAL_IP=$$(ipconfig getifaddr en0) docker compose -f redis-cluster/docker-compose.yml up -d
.PHONY: redis-cluster

kill-redis-cluster:
	docker compose -f redis-cluster/docker-compose.yml down --remove-orphans
.PHONY: redis-cluster

redis-standalone:
	docker compose -f redis-standalone/docker-compose.yml up -d
.PHONY: redis-standalone

kafka-cluster:
	docker compose -f kafka-cluster/docker-compose.yml up -d
.PHONY: kafka-cluster

rabbitmq-standalone:
	docker compose -f rabbitmq-standalone/docker-compose.yml up -d
.PHONY: rabbitmq-standalone

mongodb-standalone:
	docker compose -f mongodb-standalone/docker-compose.yml up -d
.PHONY: mongodb-standalone
