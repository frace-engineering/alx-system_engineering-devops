# Install 'flask ffrom pip3 using puppet.

package {'flask':
  ensure   => '2.1.0',
  allow    => '2.1.0',
  require  => Package['werkzeug'],
}
package {'werkzeug':
  ensure   => 'latest',
  provider => 'pip3',
} 
exec {'install flask':
  command => '/usr/bin/pip3',
  require => Package['flask'],
}
