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

    make es-single-[start/stop/status]       Initialize elasticsearch single node.
    make es-cluster-[start/stop/status]      Initialize elasticsearch cluster.
    make jaeger-[start/stop/status]          Initialize jaeger.
    make kafka                               Initialize kafka.
    make pulsar-[start/stop/status]          Initialize pulsar.
    make sonarqube-[start/stop/status]       Initialize sonarqube.
    make yubabyte-[start/stop/status]        Initialize yugabyte.
```
