# resolv_conf is used to manage the /etc/resolv.conf file.

class resolv_conf ($domain, $nameservers, $timeout = 2, $attempts = undef, $rotate = true, $options = undef) {
  file { 'resolv.conf':
    ensure  => file,
    path    => '/etc/resolv.conf',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('resolv_conf/resolv.conf.erb'),
  }
}
