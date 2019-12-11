node default {
}
node 'puppetserver.localdomain' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => "Welcome to {$fqdn} zap\n",
  }
}

node /^puppetclient/ {
  include role::app_server
}
