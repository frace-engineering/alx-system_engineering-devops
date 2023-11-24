# Install 'flask ffrom pip3 using puppet.

package {'flask':
  ensure   => 'installed',
  provider => 'pip3',
  require  => Exec['install_flask'],
}

exec {'install_flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  path    => ['/usr/bin'],
}
