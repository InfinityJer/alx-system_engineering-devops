# Puppet Manifest for changing OS configuration for the holberton user

# Increase hard file limit for user holberton
exec { 'increase-hard-file-limit-for-holberton-user':
  command => '/bin/sed -i "/holberton hard/s/5/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/',
}

# Increase soft file limit for user holberton
exec { 'increase-soft-file-limit-for-holberton-user':
  command => '/bin/sed -i "/holberton soft/s/4/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/',
}

# Ensure the holberton user exists
user { 'holberton':
  ensure => 'present',
  home   => '/home/holberton',
}

# Ensure the /home/holberton directory exists
file { '/home/holberton':
  ensure => 'directory',
  owner  => 'holberton',
  group  => 'holberton',
  mode   => '0755',
}
