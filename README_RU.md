# Graylog docker image

[EN](https://github.com/jidckii/graylog/blob/master/README.md)

[![dockeri.co](https://dockeri.co/image/jidckii/graylog)](https://hub.docker.com/r/jidckii/graylog)

Включает плагин для [SSO](https://github.com/Graylog2/graylog-plugin-auth-sso) и [alertmanager](https://github.com/GDATASoftwareAG/Graylog-Plugin-AlertManager-Callback).

Сборка:

```bash
make
```

Сборка + push в registry:

```bash
make push
```

Обновить версии можно в Makefile:

```bash
VERSION := 4.2.12-1
VERSION_SSO := 3.3.0
VERSION_ALERTMANAGER := 1.2.2
```

**Пред тем как пушить новую версию, проверь локально:**

```bash
make test
```

Удалить локальные контейнеры:

```bash
make stop
```
