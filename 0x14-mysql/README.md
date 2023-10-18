# 0x14. MySQL
The MySQL server provides a database management system with querying and connectivity capabilities, as well as the ability to have excellent data structure and integration with many different platforms.
# `MySQL Master-Slave Replication`
![](https://bs-uploads.toptal.io/blackfish-uploads/components/blog_post_page/content/cover_image_file/cover_image/1279580/retina_1708x683_staging.toptal.net_mysql_mysql-master-slave-replication-tutorial-c4941d5e44de507b5850d42c138eddc0.png)
- MySQL replication is a process that enables data from one MySQL database server (the master) to be copied automatically to one or more MySQL database servers (the slaves).
- It is usually used to spread read access on multiple servers for scalability, although it can also be used for other purposes such as for failover, or analyzing data on the slave in order not to overload the master.

## Needed Knowledge

- [What is a primary-replica cluster](https://www.digitalocean.com/community/tutorials/how-to-choose-a-redundancy-plan-to-ensure-high-availability#sql-replication)

- [MySQL primary replica setup](https://www.digitalocean.com/community/tutorials/how-to-set-up-replication-in-mysql)

- [Build a robust database backup strategy](https://www.databasejournal.com/ms-sql/developing-a-sql-server-backup-strategy/)

- `mysqldump`
### DevOps ##SysAdmin ##MySQL
## Resources:books:
Read or watch:
* [What is a primary-replica cluster](https://www.digitalocean.com/community/tutorials/how-to-choose-a-redundancy-plan-to-ensure-high-availability#sql-replication)
* [MySQL primary replica setup](https://www.digitalocean.com/community/tutorials/how-to-set-up-replication-in-mysql)
* [Build a robust database backup strategy](https://www.databasejournal.com/ms-sql/developing-a-sql-server-backup-strategy/)
* [How to uninstall MySQL from ubuntu 20.04](https://devnote.in/how-to-uninstall-mysql-from-ubuntu-20-04/)
* [How to install MySQL 5.7\* on Ubuntu 20.04 focal and Properly avoid MySQL 8.0 packages](https://www.infiniroot.com/blog/991/install-mysql-5.7-on-ubuntu-20.04-focal-avoid-8.0-packages)
* [Installing MySQL 5.7 on Ubuntu 20.04](https://techexpert.tips/mysql/installing-mysql-5-7-ubuntu-20-04/)
* [How to install MySQL 5.7 on Ubuntu 18.04, 20.04. 22.04](https://www.devart.com/dbforge/mysql/how-to-install-mysql-on-ubuntu/)

---

## man or help
* mysqldump

---
## Project Requirements

- Allowed editors: `vi`, `vim`, `emacs`
- All your files will be interpreted on `Ubuntu 16.04 LTS`
- All your files should end with a new line
- A README.md file, at the root of the folder of the project, is mandatory
- All your Bash script files must be executable
- Your Bash script must pass Shellcheck __(version 0.3.7-5~ubuntu16.04.1 via apt-get)__ without any error
- The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`
- The second line of all your Bash scripts should be a comment explaining what is the script doing
