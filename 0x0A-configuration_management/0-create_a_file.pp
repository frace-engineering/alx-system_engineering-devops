# Creat a file using puppet in the /tmp/school path
file { 'create file':
  ensure  => 'present',
  content => 'I love School',
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0744',
  path    => '/tmp/school',
}
