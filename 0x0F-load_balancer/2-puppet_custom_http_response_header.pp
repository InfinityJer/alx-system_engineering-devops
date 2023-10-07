# Puppet manifest to add a custom HTTP header (X-Served-By) to Nginx

# Define a custom fact to retrieve the server's hostname
Facter.add(:custom_hostname) do
  setcode 'hostname'
end

# Install Nginx package
package { 'nginx':
  ensure => 'installed',
}

# Create a custom Nginx configuration file for the custom header
file { '/etc/nginx/conf.d/custom_header.conf':
  ensure  => 'present',
  content => "server_tokens off;\nmore_set_headers 'X-Served-By: ${custom_hostname}';\n",
  notify  => Service['nginx'],
}

# Ensure Nginx service is running and enabled
service { 'nginx':
  ensure  => 'running',
  enable  => true,
  require => File['/etc/nginx/conf.d/custom_header.conf'],
}
