# Webshell Deception

## Demo

[![asciicast](https://asciinema.org/a/3WO3x1d4tx4KHb4pwbkBLg5lh.svg)](https://asciinema.org/a/3WO3x1d4tx4KHb4pwbkBLg5lh)

## Usage

Currently, deception of php&jsp is supported. You need to specify the -t parameter according to the webshell type.

### Parameter

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

### Configuration

The configuration file is in YAML format. You need to specify the corresponding honeypot address. The configuration content is as follows:

```
# ${honeypot_public_ip} is the public IP address of the server where the honeypot service was deployed on
sandbox: http://${honeypot_public_ip}:3389
```
