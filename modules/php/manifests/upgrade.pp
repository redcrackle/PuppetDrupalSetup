class php::upgrade(
$php_version = "",
$old_php_version = "",
)  {
              Exec {
                path => [
                        '/usr/local/bin',
                        '/opt/local/bin',
                        '/usr/bin',
                        '/usr/sbin',
                        '/bin',
                        '/sbin'],
                        logoutput => true
        }


  exec { 'stop-php-fpm':
       command   => "bash -c \"/etc/init.d/php-fpm stop\"",
       logoutput => true,
  }

  exec { 'remove_php_path':
       require => Exec['stop-php-fpm'],
       command   => "bash -c \"update-alternatives --remove php /opt/PHP-${old_php_version}/bin/php;update-alternatives --remove pear /opt/PHP-${old_php_version}/bin/pear;update-alternatives --remove peardev /opt/PHP-${old_php_version}/bin/peardev;update-alternatives --remove pecl /opt/PHP-${old_php_version}/bin/pecl;\"",
       logoutput => true,
  }

  class { 'php':
    require => Exec['remove_php_path'],
    php_version => "$php_version",
  }
}
