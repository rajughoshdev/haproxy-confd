# haproxy-confd

[Confd](https://github.com/kelseyhightower/confd) to dynamically manage [haproxy](https://github.com/haproxy/haproxy) backends.


Confd [Quick Start Guide](https://github.com/kelseyhightower/confd/blob/master/docs/quick-start-guide.md)

Confd [Command Line Flags](https://github.com/kelseyhightower/confd/blob/master/docs/command-line-flags.md#command-line-flags)

__Note:__ Confd backend polling interval (default 600) but we can change the interval time by `-interval` Flag like.

```
confd -interval 10 -backend <backend name>

```
Confd [Templates](https://github.com/kelseyhightower/confd/blob/master/docs/templates.md#templates)
