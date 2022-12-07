# 拟态防护

<p align="center">
  <img src="https://heap-web.oss-cn-hangzhou.aliyuncs.com/logo/logo_mimicry.svg" width="120">
</p>
<h1 align="center"> Mimicry </h1>



<p align="center">
<a href="https://discord.gg/KjQGUrG8aJ">
      <img src="https://img.shields.io/discord/1045276181408264202.svg" alt="Chat on Discord"></a>
      <a href="https://www.blackhat.com/eu-22/arsenal/schedule/index.html#mimicry-an-active-deception-tool-29517">
<img src="https://img.shields.io/badge/Blackhat%20Arsenal-EUROPE%202022-blue" /></a>

<p align="center"> Mimicry 是由长亭科技自研，用于在exploitation和post-exploitation进行主动欺骗的安全防护工具。 </p>
<p align="center"> 通过主动的欺骗，让攻击者在无感知的情况被转移到蜜罐。无需进行安全强对抗即可取得较好的安全效果。 </p>
</p>
<p align="center"> 中文文档 | <a href="README.md">English</a> </p>

## 🔥 Demo

[![asciicast](https://asciinema.org/a/3WO3x1d4tx4KHb4pwbkBLg5lh.svg)](https://asciinema.org/a/3WO3x1d4tx4KHb4pwbkBLg5lh)

## 🕹️ 快速开始
### 1. 确保机器上正确安装 docker , docker-compose
```
docker info
docker-compose version
```
### 2. 安装 [蜜罐服务](https://github.com/chaitin/mimicry/tree/master/mimicry/honeypot)
```
docker-compose build
docker-compose up -d
```
### 3. 在其它机器上部署 [欺骗工具](https://github.com/chaitin/mimicry/tree/master/mimicry/tools) 
```
更新 config.yaml,将 ${honeypot_public_ip} 替换为蜜罐服务的公网IP
```
### 4. 执行Webshell欺骗
```
./mimicry-tools webshell -c config.yaml -t php -p webshell_path
```


## 📝 详细文档

| 功能                                                        | 说明              | 
|-----------------------------------------------------------|-----------------|
| [Web-Deception](docs/web-deception.zh-CN.md)              | 在Web应用上伪装漏洞        |
| [Webshell-Deception](docs/webshell-deception.zh-CN.md)         | 将Webshell转移至蜜罐  |
| [Shell-Deception](docs/shell-deception.zh-CN.md)             | 将反弹shell转移到蜜罐  |

    



## 🏘️ 联系我们
1. 您可以通过 GitHub Issue 直接进行 Bug 反馈和功能建议。
2. 也可以在 [Discord](https://discord.gg/KjQGUrG8aJ) 进行讨论
