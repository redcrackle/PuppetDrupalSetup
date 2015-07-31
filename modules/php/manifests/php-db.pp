class php::php-db {
package { "php-db":
    before => Class['php'],
    ensure => "installed",
}
}
