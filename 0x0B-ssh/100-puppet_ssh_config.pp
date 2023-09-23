# Puppet manifest to configure SSH client

# Ensure the SSH client configuration directory exists
file { '/home/yourusername/.ssh':
  ensure => 'directory',
  owner  => 'yourusername',
  group  => 'yourusername',
  mode   => '0700',
}

# Ensure the SSH client configuration file exists
file { '/home/yourusername/.ssh/config':
  ensure => 'file',
  owner  => 'yourusername',
  group  => 'yourusername',
  mode   => '0600',
  content => "\
Host your-server-alias
    HostName 98.98.98.98  # Replace with the actual IP or hostname of your server
    User ubuntu
    IdentityFile ~/.ssh/school
    PasswordAuthentication no
",
}
