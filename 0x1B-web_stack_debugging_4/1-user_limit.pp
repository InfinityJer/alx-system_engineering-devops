# Puppet Manifest for changing OS configuration for the holberton user

exec { 'change-os-configuration-for-holberton-user':
  command => '/bin/echo "* - nofile 65536" >> /etc/security/limits.conf',
  onlyif  => '/bin/grep -q "^*.*65536" /etc/security/limits.conf',
  path    => '/bin:/sbin:/usr/bin:/usr/sbin',
}

exec { 'change-ulimit-for-holberton-user':
  command => '/bin/echo "ulimit -n 65536" >> /home/holberton/.bashrc',
  onlyif  => '/bin/grep -q "^ulimit -n 65536" /home/holberton/.bashrc',
  path    => '/bin:/sbin:/usr/bin:/usr/sbin',
}

# Restart Nginx
-> exec { 'nginx-restart':
  command => 'nginx restart',
  path    => '/etc/init.d/',
}
