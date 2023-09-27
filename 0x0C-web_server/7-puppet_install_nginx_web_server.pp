# Install Nginx package
package { 'nginx':
  ensure => 'installed',
}

# Create a custom HTML page with "Hello World!"
file { '/var/www/html/index.html':
  ensure  => 'file',
  content => 'Hello World!',
  require => Package['nginx'],
}

# Configure Nginx to listen on port 80
file { '/etc/nginx/sites-available/default':
  ensure  => 'file',
  source  => 'puppet:///modules/nginx/default',
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Enable the default site (symlink)
file { '/etc/nginx/sites-enabled/default':
  ensure  => 'link',
  target  => '/etc/nginx/sites-available/default',
  require => File['/etc/nginx/sites-available/default'],
  notify  => Service['nginx'],
}

# Define the custom 301 redirect
nginx::resource::vhost { 'redirect_me':
  www_root    => '/var/www/html',
  listen_port => 80,
  server_name => 'localhost',
  location    => {
    '/' => {
      rewrite => '^/redirect_me / https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
    },
  },
}
