class resolv_conf ($domain, $nameservers, $options = undef) {
  file { 'resolv.conf':
    ensure  => file,
    path    => '/etc/resolv.conf',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('resolv_conf/resolv.conf.erb'),
  }
}
