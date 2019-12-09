node default {
}
node 'puppetserver.localdomain' {
  include role::master_server
}

node /^puppetclient/ {
  include role::app_server
}
