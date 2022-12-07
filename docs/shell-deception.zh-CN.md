# Shell Deception

## Demo

[![asciicast](https://asciinema.org/a/Wi4f9iouzHYpAo6faqrPx19dt.svg)](https://asciinema.org/a/Wi4f9iouzHYpAo6faqrPx19dt)

## 使用说明

### 命令参数
```
# 目前欺骗对象是shell进程，需要预先获取对应的bind-shell/reverse-shell的进程ID信息

./mimicry-tools shell -c config.yaml -p $pid

Usage:
  mimicry-tools shell [flags]

Flags:
  -h, --help      help for shell
  -p, --pid int   pid of process for deceive (default -1)

Global Flags:
  -c, --config string   config file

```

### 配置信息

配置文件为yaml格式，需要指定对应的蜜罐地址，配置内容如下:

```
# ${honeypot_public_ip} 为之前部署蜜罐的服务器的公网IP地址
shell: ${honeypot_public_ip}
```

