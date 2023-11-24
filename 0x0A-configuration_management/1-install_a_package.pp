# Install 'flask ffrom pip3 using puppet.
exec { 'pip3 install flask=2.1.0':
  ensure => 'installed'
}
