class php::php5-gd {
package {"php5-common":
    before  => Class['php'],
}
package { "php5-gd":
    require => Package['php5-common'],
    ensure => "installed",
}
}
