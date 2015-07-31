# == Class: percona
#
# Full description of class percona here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
#  class { 'percona':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2015 Your name here, unless otherwise noted.
#
class percona(
$percona_version = "56",
$root_password = undef,
$cluster_ip_addresses = undef,
$user = "mysql",                                                   
$default_storage_engine = "InnoDB",                  
$basedir = "/usr",
$datadir = "/var/lib/mysql",
$socket = "/var/run/mysqld/mysqld.sock",
$port = 3306,
$innodb_autoinc_lock_mode = 2,
$log_queries_not_using_indexes = 1,
$max_allowed_packet = "128M",
$binlog_format = "ROW",
$wsrep_provider = "/usr/lib/libgalera_smm.so",
$wsrep_node_address = undef,
$wsrep_cluster_name= undef,
$wsrep_node_name = undef,
$wsrep_slave_threads = 4,
$wsrep_sst_method = "xtrabackup-v2",
$wsrep_sst_auth = "sst:secret",
$wsrep_sst_auth_user =undef,
$wsrep_sst_auth_pass =undef,
$streamfmt = "xbstream",
$parallel = 2,
$compress_threads = 2,
$rebuild_threads = 2,
$bootstarp_machine = false
)
{
       Exec {
                path => [
                        '/usr/local/bin',
                        '/opt/local/bin',
                        '/usr/bin',
                        '/usr/sbin',
                        '/bin',
                        '/sbin'],
                        logoutput => true,
        }

  include apt

  apt::source { 'percona':
    location   => 'http://repo.percona.com/apt',
    repos      => 'main',
    key        => '1C4CBDCDCD2EFD2A',
    key_server => 'keys.gnupg.net',
    include_src       => true,
    include_deb       => true,
    before => Package["${req_packages}"]
  }
#  exec {"install_repo":
#                command => 'echo "deb http://repo.percona.com/apt trusty main" >> /etc/apt/sources.list.d/percona.list;echo "deb-src http://repo.percona.com/apt trusty main" >> /etc/apt/sources.list.d/percona.list;apt-key adv --keyserver keys.gnupg.net --recv-keys 1C4CBDCDCD2EFD2A"'

#    }

      $req_packages = ["percona-xtradb-cluster-${percona_version}", "qpress", "xtrabackup","python-software-properties"]

 package {"${req_packages}":
        ensure => "installed",
        before => File['my_cnf'],
      }

 file { 'my_cnf':
                path => "/etc/mysql/my.cnf",
                content => template('percona/my.cnf.erb'),
                owner => 'root',
                group => 'root',
                mode => '644',
        }
# service { "mysql":
 #               require => File['/etc/mysql/my.cnf'],
  #              ensure => running,
   #             enable => true,
    #    }
 if ($root_password) {
        exec {"set-percona-root-password":
            command => "mysqladmin -u root password \"$root_password\"",
            path    => ["/usr/bin"],
            onlyif  => "mysqladmin -u root status 2>&1 > /dev/null",
        }
  if($bootstarp_machine = true){
exec {"create_sst":
                command => 'mysql -e "GRANT RELOAD, LOCK TABLES, REPLICATION CLIENT ON *.* TO '${wsrep_sst_auth_user}'@'localhost' IDENTIFIED BY '${wsrep_sst_auth_pass}';"'}
     }
exec {"start_bootstrap":
                command => "service mysql bootstrap-pxc"
}
  else {
         service { "mysql":
                ensure => running,
                enable => true,
}
}  
}

}
