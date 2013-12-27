class zabbix::agent::install {
  include zabbix::repo

  package { 'zabbix-agent':
    ensure  => present,
    require => Class['zabbix::repo'],
  }
}
