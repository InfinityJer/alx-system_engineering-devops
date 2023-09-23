# 0x0B. SSH
## DevOps ## SSH ## Network ## SysAdmin ## Security

## Resources:books:
Read or watch:
* [What is a (physical) server - text](https://en.wikipedia.org/wiki/Server_%28computing%29#Hardware_requirement)
* [What is a (physical) server - video](https://www.youtube.com/watch?v=B1ANfsDyjeA)
* [SSH essentials](https://www.digitalocean.com/community/tutorials/ssh-essentials-working-with-ssh-servers-clients-and-keys)
* [SSH Config File](https://www.ssh.com/academy/ssh/config)
* [Public Key Authentication for SSH](https://www.ssh.com/academy/ssh/public-key-authentication)
* [How Secure Shell Works](https://www.youtube.com/watch?v=ORcvSkgdA58)
* [SSH Crash Course](https://www.youtube.com/watch?v=hQWRp-FdTpc)

---
## For reference
* [Understanding the SSH Encrypytion and Connection Process](https://www.digitalocean.com/community/tutorials/understanding-the-ssh-encryption-and-connection-process)
* [Secure Shell Wiki](https://en.wikipedia.org/wiki/Secure_Shell)
* [IETF RFC 4251 - Description of the SSH Protocol](https://www.ietf.org/rfc/rfc4251.txt)
* [Internet Engineering Task Force](https://en.wikipedia.org/wiki/Internet_Engineering_Task_Force)
* [Request for Comments](https://en.wikipedia.org/wiki/Request_for_Comments)
* [SSH Cheat Sheet](https://gist.github.com/bradtraversy/f03df587f2323b50beb4250520089a9e)

---
## Learning Objectives:bulb:
What you should learn from this project:

* What is a server
* Where servers usually live
* What is SSH
* How to create an SSH RSA key pair
* How to connect to a remote host using an SSH RSA key pair
* The advantage of using  #!/usr/bin/env bash instead of /bin/bash 

---

### [0. Use a private key](./0-use_a_private_key)
* Write a Bash script that uses ssh to connect to your server using the private key ~/.ssh/holberton with the user ubuntu.


### [1. Create an SSH key pair](./1-create_ssh_key_pair)
* Write a Bash script that creates an RSA key pair.


### [2. Client configuration file](./2-ssh_config)
* Your Ubuntu Vagrant machine has an SSH configuration file for the local SSH client, let’s configure it to our needs so that you can connect to a server without typing a password.
Share your SSH client configuration in your answer file.


### [4. Let me in!](./100-puppet_ssh_config.pp)
* Now that you have successfully connected to your server, we would also like to join the party.


---

## Author
* **Kuria Jeremih** -
