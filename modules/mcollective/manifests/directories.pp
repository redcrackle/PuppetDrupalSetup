# == Class: mcollective::node::directories
#
# Manages the basic directories for MCollective
class mcollective::directories {
  file { ['/etc/mcollective', '/etc/mcollective/ssl']:
    ensure => 'directory',
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }

   file{"/usr/share/mcollective":
           ensure => ['directory','present'],
           mode => 0755
       }

   file{"/usr/share/mcollective/plugins":
           ensure => ['directory','present'],
           mode => 0755
       }

   file{"/usr/share/mcollective/plugins/mcollective":
           ensure => ['directory','present'],
           mode => 0755
       }

   file{"/usr/share/mcollective/plugins/mcollective/connector":
           ensure => ['directory','present'],
           mode => 0755
       }

}

