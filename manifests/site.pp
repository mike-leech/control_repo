node default {
}
node 'puppetserver.localdomain' {
  include role::master_server
}
