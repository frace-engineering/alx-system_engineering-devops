# A puppet manifest that configures SSH client.

file { '/home/fugwungene/.ssh/config':
  ensure  => 'file',
  owner   => 'fugwungene',
  group   => 'fugwungene',
  mode    => '0600',
  content => '<<-EOT
    Host server1
      HostName 181408-web-01
      user ubuntu
      IdentityFile ~/.ssh/school
      PreferredAuthentications publickey
      PasswordAuthentication no
  EOT'
}
