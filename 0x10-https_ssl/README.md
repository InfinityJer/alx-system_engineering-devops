# 0x10. HTTPS SSL
![](https://www.x-cart.com/img/8527/http_to_https-1.webp)

> SSL stands for Secure Sockets Layer and, in short, it's the standard technology for keeping an internet connection secure and safeguarding any sensitive data that is being sent between two systems, preventing criminals from reading and modifying any information transferred, including potential personal details. The two systems can be a server and a client (for example, a shopping website and browser) or server to server (for example, an application with personal identifiable information or with payroll information).

> HTTPS (Hyper Text Transfer Protocol Secure) appears in the URL when a website is secured by an SSL certificate. The details of the certificate, including the issuing authority and the corporate name of the website owner, can be viewed by clicking on the lock symbol on the browser bar.

__What happens when you don’t secure your website traffic?__
<img src='https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/276/xCmOCgw.gif'>

## Resources:books:
Read or watch:
* [What is HTTPS?](https://www.instantssl.com/http-vs-https)
* [What are the 2 main elements that SSL is providing](https://www.sslshopper.com/why-ssl-the-purpose-of-using-ssl-certificates.html)
* [HAProxy SSL termination on Ubuntu16.04](https://devops.ionos.com/tutorials/install-and-configure-haproxy-load-balancer-on-ubuntu-1604/)
* [SSL termination](https://en.wikipedia.org/wiki/TLS_termination_proxy)
* [Bash function](https://tldp.org/LDP/abs/html/complexfunct.html)
* [How To Use Certbot Standalone Mode to Retrieve Let's Encrypt SSL Certificates on Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-use-certbot-standalone-mode-to-retrieve-let-s-encrypt-ssl-certificates-on-ubuntu-16-04)


---

## man or help
* awk
* dig

---

## Learning Objectives:bulb:
What you should learn from this project:

* What is HTTPS SSL 2 main roles
* What is the purpose encrypting traffic
* What SSL termination means

---
## Requirements

- Allowed editors: `vi`, `vim`, `emacs`
- All your files will be interpreted on `Ubuntu 16.04 LTS`
- All your files should end with a new line
- A README.md file, at the root of the folder of the project, is mandatory
- All your Bash script files must be executable
- Your Bash script must pass `Shellcheck (version 0.3.7)` without any error
- The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`
- The second line of all your Bash scripts should be a comment explaining what is the script doing

## Installing SSL Termination on Haproxy
- Linux Distro: __Ubuntu 20.04 LTS__
- HAProxy Version: __v2.4.3__

```bash

#if you already have haproxy installed do this
$ sudo snap install --classic certbot

# check if haproxy is installed, if yes stop haproxy
$ sudo service haproxy stop

# Install ssl using certbot
$ sudo certbot certonly --standalone

# Follow the instrustions accurately, at the end please take note of the
# Location of your SSL Keys. Usually going to default to the /etc/letsencrypt
# directory. To view them do the below
$ ls /etc/letsencrypt/live/domain_name/

# Now concat your certificate .pem files to a single pem file and save them to
# /etc/ssl/private
$ cat cert_key_1 cert_key_2 > /etc/ssl/private/any_desired_name.pem

# Now go to your haproxy config file to add a the path to your certificate
# Then reload haproxy
$ sudo service haproxy reload
```
