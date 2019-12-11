node default {
}
node 'puppetserver.localdomain' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => $fqdn,
  }
}

node /^puppetclient/ {
  include role::app_server
}
