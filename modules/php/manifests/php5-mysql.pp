class php::php5-mysql {
package { "php5-mysql":
    require => Class['php::php5-gd'],
    ensure => "installed",
}
}
