# Shell Deception

## Demo

[![asciicast](https://asciinema.org/a/Wi4f9iouzHYpAo6faqrPx19dt.svg)](https://asciinema.org/a/Wi4f9iouzHYpAo6faqrPx19dt)

## Usage

### Parameter
```
# At present, the object of deception is the shell process, and it is necessary to obtain the PID information of the corresponding Bind-Shell/Reverse-Shell in advance.
./mimicry-tools shell -c config.yaml -p $pid

Usage:
  mimicry-tools shell [flags]

Flags:
  -h, --help      help for shell
  -p, --pid int   pid of process for deceive (default -1)

Global Flags:
  -c, --config string   config file

```

### Configuration

The configuration file is in YAML format. You need to specify the corresponding honeypot address. The configuration content is as follows:

```
# ${honeypot_public_ip} is the public IP address of the server where the honeypot service was deployed on
shell: ${honeypot_public_ip}
```

