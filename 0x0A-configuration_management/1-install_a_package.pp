# Install 'flask ffrom pip3 using puppet.

package {'install flask==2.1.0':
  ensure   => '2.1.0',
  provider => 'pip3',
}
