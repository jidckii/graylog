# Graylog docker image

[RU](https://github.com/jidckii/graylog/blob/master/README_RU.md)

[![dockeri.co](https://dockeri.co/image/jidckii/graylog)](https://hub.docker.com/r/jidckii/graylog)

Includes plugin for [SSO](https://github.com/Graylog2/graylog-plugin-auth-sso), [alertmanager](https://github.com/GDATASoftwareAG/Graylog-Plugin-AlertManager-Callback) and [metrics](https://github.com/graylog-labs/graylog-plugin-metrics-reporter) in prometheus format.

Assembly:

```bash
make
```

Assembly + push to registry:

```bash
make push
```

You can update the versions in the Makefile:

```bash
VERSION := 4.1.1-1
VERSION_SSO := 3.2.1
VERSION_ALERTMANAGER := 1.2.2
VERSION_METRICS := 3.0.0
```

**Before pushing a new version, check locally:**

```bash
make test
```

Remove local containers:

```bash
make stop
```
