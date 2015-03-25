$str = "Installation de puppet finalisée"

file {"/tmp/puppet-info":
  content => "$str"
}

package { 'tomcat7':
  ensure => installed,
}
