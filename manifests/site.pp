node default {
}
node 'puppetserver.localdomain' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => "Welcome to ${fqdn} zap\n",
  }
}

node /^puppetclient/ {
  include role::app_server
  include role::minecraft_server
}

# node 'server01.physics.ox.ac.uk' {
#   class { 'ntp':
#   servers => ['ntp1.physics.ox.ac.uk','ntps.physics.ox.ac.uk']
#   }
# }

node 'server01.physics.ox.ac.uk' {
  include ntp
  # or class { "ntp": }
}
