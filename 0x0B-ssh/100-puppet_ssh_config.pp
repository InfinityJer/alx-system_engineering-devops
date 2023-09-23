# Puppet manifest to configure SSH client
# Ensure the SSH client configuration file exists
file_line { 'replace passwordAuthentication':
    ensure  => 'present',
    path    => '/etc/ssh/ssh_config',
    replace => true,
    line    => 'PasswordAuthentication no',
    match   => 'PasswordAuthentication yes',
}

file_line { 'add private key':
    ensure => 'present',
    path   => '/etc/ssh/ssh_config',
    line   => 'IdentityFile ~/.ssh/school',
}
