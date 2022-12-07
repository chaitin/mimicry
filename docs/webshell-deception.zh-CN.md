# Webshell Deception

## Demo

[![asciicast](https://asciinema.org/a/3WO3x1d4tx4KHb4pwbkBLg5lh.svg)](https://asciinema.org/a/3WO3x1d4tx4KHb4pwbkBLg5lh)

## 使用说明

目前支持对php&jsp的欺骗，需要根据webshell类型通过-t参数进行指定。

### 命令参数

```
./mimicry-tools webshell -c config.yaml -t php -p /var/www/html/demo.php

Usage:
  mimicry-tools webshell [flags]

Flags:
  -h, --help          help for webshell
  -p, --path string   location of webshell
  -t, --type string   type of webshell for deceive (jsp/php)

Global Flags:
  -c, --config string   config file
```

### 配置信息

配置文件为yaml格式，需要指定对应的蜜罐地址，配置内容如下:

```
# ${honeypot_public_ip} 为之前部署蜜罐的服务器的公网IP地址
sandbox: http://${honeypot_public_ip}:3389
```
