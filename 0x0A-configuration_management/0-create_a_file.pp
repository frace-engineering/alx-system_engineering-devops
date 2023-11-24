# Creat a file using puppet in the /tmp/school path
 file {'create file':
   ensure  => 'present',
   content => 'I love Puppet',
   mode    => '0744',
   owner   => 'www-data',
   group   => 'www-data',
   path    => '/tmp/school',
 }
