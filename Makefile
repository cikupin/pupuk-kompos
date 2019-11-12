.PHONY: help

help:
	@echo 'Command list usage:'
	@echo
	@echo '    make help                                Show command list.'
	@echo '    make es-single-[start/stop/status]       Initialize elasticsearch single node.'
	@echo '    make es-cluster-[start/stop/status]      Initialize elasticsearch cluster.'
	@echo '    make jaeger-[start/stop/status]          Initialize jaeger.'
	@echo '    make kafka                               Initialize kafka.'
	@echo '    make pulsar-[start/stop/status]          Initialize pulsar.'
	@echo '    make sonarqube-[start/stop/status]       Initialize sonarqube.'
	@echo '    make yubabyte-[start/stop/status]        Initialize yugabyte.'
	@echo '    make tick-[start/stop/status]            Initialize TICK stack.'
	@echo ''
	@echo '    make influx-cli                          Run InfluxDB cli.'
	@echo '    make kapacitor-cli                       Run kapacitor cli.'
	@echo ''

es-single-start:
	@docker-compose -f ./elasticsearch/single-node.yml up -d

es-single-stop:
	@docker-compose -f ./elasticsearch/single-node.yml down

es-single-status:
	@docker-compose -f ./elasticsearch/single-node.yml ps

es-cluster-start:
	@docker-compose -f ./elasticsearch/cluster.yml up -d

es-cluster-stop:
	@docker-compose -f ./elasticsearch/cluster.yml down

es-cluster-status:
	@docker-compose -f ./elasticsearch/cluster.yml ps

influx-cli:
	@docker-compose -f ./tick/cli.yml run --rm influxdb-cli

jaeger-start:
	@docker-compose -f ./jaeger/docker-compose.yml up -d

jaeger-stop:
	@docker-compose -f ./jaeger/docker-compose.yml down

jaeger-status:
	@docker-compose -f ./jaeger/docker-compose.yml ps

kafka:
	@echo "Get kafka docker here https://github.com/cikupin/kafka-docker"

kapacitor-cli:
	@docker-compose -f ./tick/cli.yml run --rm kapacitor-cli

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

tick-start:
	@docker-compose -f ./tick/tick_stack.yml up -d

tick-stop:
	@docker-compose -f ./tick/tick_stack.yml down

tick-status:
	@docker-compose -f ./tick/tick_stack.yml ps

yugabyte-start:
	@docker-compose -f ./yugabyte/docker-compose.yml up -d

yugabyte-stop:
	@docker-compose -f ./yugabyte/docker-compose.yml down

yugabyte-status:
	@docker-compose -f ./yugabyte/docker-compose.yml ps
