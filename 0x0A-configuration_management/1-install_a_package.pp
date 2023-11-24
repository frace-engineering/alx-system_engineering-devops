# Install 'flask ffrom pip3 using puppet.

package {'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Exec['install flask'],
}

exec { 'install flask':
  command => '/usr/bin/pip3 install flask'
}
