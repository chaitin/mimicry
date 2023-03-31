# Mimicry

<p align="center">
  <img src="https://heap-web.oss-cn-hangzhou.aliyuncs.com/logo/logo_mimicry.svg" width="120">
</p>
<h1 align="center"> Mimicry </h1>



<p align="center">
<a href="https://discord.gg/KjQGUrG8aJ">
      <img src="https://img.shields.io/discord/1045276181408264202.svg" alt="Chat on Discord"></a>
      <a href="https://www.blackhat.com/eu-22/arsenal/schedule/index.html#mimicry-an-active-deception-tool-29517">
<img src="https://img.shields.io/badge/Blackhat%20Arsenal-EUROPE%202022-blue" /></a>

<p align="center"> Mimicry is a security tool developed by Chaitin Technology for active deception in exploitation and post-exploitation. </p>
<p align="center"> Active deception can live migrate the attacker to the honeypot without awareness. We can achieve a higher security level at a lower cost with Active deception. </p>
</p>
<p align="center"> English | <a href="README.zh.md">中文文档</a> </p>

## 🏠 Overview

<p><a href="./docs/mimicry.pdf">Presentation</a></p>
<p><a href="https://vimeo.com/813408987">Vedio</a></p>

## 🔥 Demo

[![asciicast](https://asciinema.org/a/3WO3x1d4tx4KHb4pwbkBLg5lh.svg)](https://asciinema.org/a/3WO3x1d4tx4KHb4pwbkBLg5lh)

## 🕹️ Quick Start
### 1.  Make sure docker, docker-compose is installed correctly on the machine
```
docker info
docker-compose version
```
### 2. Install [honeypot service](https://github.com/chaitin/mimicry/tree/master/mimicry/honeypot)
```
docker-compose build
docker-compose up -d
```
### 3. Deploy [deception tool](https://github.com/chaitin/mimicry/tree/master/mimicry/tools) on other machines
```
update config.yaml,replace ${honeypot_public_ip} to the public IP of honeypot service
```
### 4. Perform Webshell deceiving
```
./mimicry-tools webshell -c config.yaml -t php -p webshell_path
```


## 📝 Advance Usage

| Tool                                                        | Description             | 
|-----------------------------------------------------------|-----------------|
| [Web-Deception](docs/web-deception.md)              | Fake vulnerabilities in web applications        |
| [Webshell-Deception](docs/webshell-deception.md)         | live migrate webshell to the honeypot  |
| [Shell-Deception](docs/shell-deception.md)             | live migrate ReverseShell/BindShell to the honeypot  |

    



## 🏘️ Contact Us
1. You can make bug feedback and feature suggestions directly through GitHub Issues.
2. You can join the discussion group on [Discord](https://discord.gg/KjQGUrG8aJ) .
