# Graylog docker image

[RU](https://github.com/jidckii/graylog/blob/master/README_RU.md)

[![dockeri.co](https://dockeri.co/image/jidckii/graylog)](https://hub.docker.com/r/jidckii/graylog)

Includes plugin for [SSO](https://github.com/Graylog2/graylog-plugin-auth-sso) and [alertmanager](https://github.com/GDATASoftwareAG/Graylog-Plugin-AlertManager-Callback).

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
VERSION := 4.2.12-1
VERSION_SSO := 3.3.0
VERSION_ALERTMANAGER := 1.2.2
```

**Before pushing a new version, check locally:**

```bash
make test
```

Remove local containers:

```bash
make stop
```
