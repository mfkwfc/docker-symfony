A self-sufficient Docker container to run simple Symfony applications.

## Usage

```
$ docker run -itP \
    -v $PWD:/srv \
    -e DB_NAME=somedbname \
    -e INIT=bin/reload \
    ubermuda/symfony
```

## Parameters

Configuration is done through environment variables that you can change with `docker run`' s `-e` switch:

* `DB_NAME`, the database name. Defaults to `symfony`.
* `INIT`, path to a initialization script (eg: creating db tables, etc). Ignored if empty.

## Compile
```
docker build -t symfony:v1 .
```

## run
```

docker run -p 9266:80 -itP \
    -v /Users/porridge/Project/php/Entrance:/srv \
    -e DB_NAME=temp_db \
    -e DB_PASSWORD=666666 \
    symfony:v6
```