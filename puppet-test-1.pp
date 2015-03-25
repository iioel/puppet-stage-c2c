$str = "Installation de puppet finalisée"

file {"/tmp/puppet-info":
  content => "$str"
}
