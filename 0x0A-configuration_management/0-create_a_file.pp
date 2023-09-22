# Create a file
file { '0-create_a_file.pp':
  path    => '/tmp/school',   # Sets file path
  mode    => '0744',          # Set file permissions to 0744
  owner   => 'www-data',      # Set the owner to www-data
  group   => 'www-data',      # Set the group to www-data
  content => 'I love Puppet', # Set the file content
}
