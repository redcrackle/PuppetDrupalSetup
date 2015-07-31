class php::php5-memcached {
package { "php5-memcached":
    before => Class['php'],
    ensure => "installed",
}
}
