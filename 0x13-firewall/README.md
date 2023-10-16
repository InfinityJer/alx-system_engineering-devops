# 0x13. Firewall
### DevOps ##SysAdmin ##Security
## Resources:books:
---
`A firewall` is a network security system that monitors and controls incoming and outgoing network traffic based on predetermined security rules.
![](https://www.simplilearn.com/ice9/free_resources_article_thumb/Firewall_2.png)
---
Read or watch:
* [What is a firewall](https://en.wikipedia.org/wiki/Firewall_%28computing%29)
* [How to Set Up a Firewall with UFW on Ubuntu 20.04](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-firewall-with-ufw-on-ubuntu-20-04)
* [How to Configure UFW to Forward Port 80/443 to internal Server Hosted on LAN](https://www.cyberciti.biz/faq/how-to-configure-ufw-to-forward-port-80443-to-internal-server-hosted-on-lan/)

---
## The UFW On Linux Distro

![Uncomplicated Firewall](https://codedesign.fr/wp-content/uploads/2018/08/ubuntu-ufw-1-880x276.png)

The __Uncomplicated firewall (UFW)__ in my ubuntu 22.04 LTS comes preinstalled but disabled, i only needed to enable it to get going. However lets take note of the following:

* Once __UFW__ is enabled you have to set the rules on that terminal session especially when you're connecting via ssh cause by default ufw blocks all connection to port 22.
* __UFW__ doesn't have a native port forwarding command, you need to do it via its `/etc/ufw/before.rules` file
* You also need to enable port forwarding by uncommenting the `net.ipv4.ip_forward=1` line in `/etc/sysctl.conf`
---
## More Info
As explained in the web stack debugging guide concept page, ```telnet``` is a very good tool to check if sockets are open with ```telnet IP PORT```. For example, if you want to check if port 22 is open on ``` web-02:```
