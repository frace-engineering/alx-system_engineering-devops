# Install 'flask ffrom pip3 using puppet.

exec { 'install flask=2.1.0':
  path => '/usr/bin/pip3 install flask==2.1.0'
}
