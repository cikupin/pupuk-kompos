pupuk-kompos
=============

Just a collection of my personal docker-compose dev tools:

* Elasticsearch 7.4.2
* Flagr 1.1.5
* Jaeger all-in-one 1.13
* Apache Pulsar 2.4.1
* Sonarqube 7.9.1
* Yugabyte 1.3.0.0-b1
* TICK stack
* NATS Server 2.1.2
* NATS Streaming 0.16.2
* Swagger Editor v3.7.1
* Swagger UI v3.24.3

Usage
------------

Run `make help` to show command list:

```
Command list usage:

    make help                                Show command list.
    make es-single-[start/stop/status]       Initialize elasticsearch single node.
    make es-cluster-[start/stop/status]      Initialize elasticsearch cluster.
    make flagr-[start/stop/status]           Initialize flagr.
    make jaeger-[start/stop/status]          Initialize jaeger.
    make kafka                               Initialize kafka.
    make nats-[start/stop/status]            Initialize nats server.
    make nats-streaming-[start/stop/status]  Initialize nats streaming server.
    make pulsar-[start/stop/status]          Initialize pulsar.
    make sonarqube-[start/stop/status]       Initialize sonarqube.
    make swagger-[start/stop/status]         Initialize swagger.
    make tick-[start/stop/status]            Initialize TICK stack.
    make yubabyte-[start/stop/status]        Initialize yugabyte.

    make influx-cli                          Run InfluxDB cli.
    make kapacitor-cli                       Run kapacitor cli.

```
