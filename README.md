# percona-tokudb Docker Image

This is a fork of https://github.com/docker-library/percona/ that adds support for TokuDB

This is just intended as a POC for getting TokuDB working in containers, we (reevoo) have
no production experiance with TokuDB in containers or otherwise, YMMV.

## Build The Image

```console
docker build -t percona-tokudb .
```

## Start a server instance

```console
docker run --name percona-tokudb -e MYSQL_ALLOW_EMPTY_PASSWORD=true -d percona-tokudb
```

## Get a console

```console
docker exec -ti percona-tokudb mysql
```
### Check the TokuDB engine is enabled.
```
mysql> SHOW ENGINES;
+--------------------+---------+----------------------------------------------------------------------------+--------------+------+------------+
| Engine             | Support | Comment                                                                    | Transactions | XA   | Savepoints |
+--------------------+---------+----------------------------------------------------------------------------+--------------+------+------------+
. . .
| TokuDB             | YES     | Percona TokuDB Storage Engine with Fractal Tree(tm) Technology             | YES          | YES  | YES        |
. . .
```
