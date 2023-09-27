# Install Nginx package with puppet 
package { 'nginx':
  ensure => 'installed',
}

# Create a custom HTML page with "Hello World!"
file { '/var/www/html/index.html':
  ensure  => 'file',
  content => 'Hello World!',
  require => Package['nginx'],
}

exec { 'append_redirect_me':
  command => "/usr/bin/sed -i '/^}$/i \\\n\tlocation \\/redirect_me {return 301 https:\\/\\/www.youtube.com\\/watch?v=QH2-TGUlwu4;}' /etc/nginx/sites-available/default",
}

exec {'run':
  command  => 'sudo service nginx restart',
  provider => shell,
}
