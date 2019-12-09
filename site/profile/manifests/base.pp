class profile::base {
  user {'admin':
    ensure => present,
  }
  package { 'git':
    ensure  => "installed",
  }
}
