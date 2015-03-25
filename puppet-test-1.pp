$str = "Installation de puppet finalisée"

file {"/tmp/puppet-info":
  content => "$str",
}

package { 'tomcat7':
  ensure => installed,
}

user {"puppet-test-1":
  ensure => present,
  managehome => true,
  shell => "/dev/null"
  groups => "puppet-test-1",
}

exec {'echo':
  command => '/bin/echo "Run puppet terminé, ou presque\n"',
}
