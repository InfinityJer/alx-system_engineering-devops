# Puppet manifest to fix Apache 500 error
# Uses strace to trace the system calls made by the Apache process

$file_to_edit = '/var/www/html/wp-settings.php'

exec { 'replace_line':
  command => "sed -i 's/phpp/php/g' ${file_to_edit}",
  path    => ['/bin','/usr/bin']
}

service { 'apache2':
  ensure => 'running',
  enable => true,
}
