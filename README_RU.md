# Graylog docker image

[EN](https://github.com/jidckii/graylog/blob/master/README.md)

Включает плагин для [SSO](https://github.com/Graylog2/graylog-plugin-auth-sso), [alertmanager](https://github.com/GDATASoftwareAG/Graylog-Plugin-AlertManager-Callback) и [metrics](https://github.com/graylog-labs/graylog-plugin-metrics-reporter)  в формате prometheus.

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
VERSION := 4.1.1-1
VERSION_SSO := 3.2.1
VERSION_ALERTMANAGER := 1.2.2
VERSION_METRICS := 3.0.0
```

**Пред тем как пушить новую версию, проверь локально:**

```bash
make test
```

Удалить локальные контейнеры:

```bash
make stop
```
