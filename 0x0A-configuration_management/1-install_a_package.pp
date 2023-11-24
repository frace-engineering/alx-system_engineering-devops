# Install 'flask ffrom pip3 using puppet.

package {'flask -v 2.1.0':
  ensure   => 'vserion 2.1.0',
  require  => 'install flask'
  exec {'install flask':
  command => '/usr/bin/pip3 install flask',
}
