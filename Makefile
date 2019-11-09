.PHONY: help kafka es-cluster-start es-cluster-stop es-cluster-status jaeger-start jaeger-stop jaeger-status pulsar-start pulsar-stop pulsar-status sonarqube-start sonarqube-stop sonarqube-status yugabyte-start yugabyte-stop yugabyte-status

help:
	@echo 'Command list usage:'
	@echo
	@echo '    make help                                Show command list.'
	@echo '    make es-cluster-[start/stop/status]      Initialize elasticsearch cluster.'
	@echo '    make jaeger-[start/stop/status]          Initialize jaeger.'
	@echo '    make kafka                               Initialize kafka.'
	@echo '    make pulsar-[start/stop/status]          Initialize pulsar.'
	@echo '    make sonarqube-[start/stop/status]       Initialize sonarqube.'
	@echo '    make yubabyte-[start/stop/status]        Initialize yugabyte.'
	@echo

es-cluster-start:
	@sudo sysctl -w vm.max_map_count=262144
	@docker-compose -f ./elasticsearch/cluster.yml up -d

es-cluster-stop:
	@sudo sysctl -w vm.max_map_count=65530
	@docker-compose -f ./elasticsearch/cluster.yml down

es-cluster-status:
	@docker-compose -f ./elasticsearch/cluster.yml ps

jaeger-start:
	@docker-compose -f ./jaeger/docker-compose.yml up -d

jaeger-stop:
	@docker-compose -f ./jaeger/docker-compose.yml down

jaeger-status:
	@docker-compose -f ./jaeger/docker-compose.yml ps

kafka:
	@echo "Get kafka docker here https://github.com/cikupin/kafka-docker"

pulsar-start:
	@docker-compose -f ./pulsar/docker-compose.yml up -d

pulsar-stop:
	@docker-compose -f ./pulsar/docker-compose.yml down

pulsar-status:
	@docker-compose -f ./pulsar/docker-compose.yml ps

sonarqube-start:
	@docker-compose -f ./sonarqube/docker-compose.yml up -d

sonarqube-stop:
	@docker-compose -f ./sonarqube/docker-compose.yml down

sonarqube-status:
	@docker-compose -f ./sonarqube/docker-compose.yml ps

yugabyte-start:
	@docker-compose -f ./yugabyte/docker-compose.yml up -d

yugabyte-stop:
	@docker-compose -f ./yugabyte/docker-compose.yml down

yugabyte-status:
	@docker-compose -f ./yugabyte/docker-compose.yml ps
