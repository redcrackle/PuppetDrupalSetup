# == Class: mcoui
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2015 Your name here, unless otherwise noted.
#
class mcoui(
$admin_username = 'opstree',
$admin_password = 'opstree@123',
$admin_email = 'redcrackle@opstree.com'
) {

  package {'git':
    ensure => 'present',
  }

  vcsrepo { '/opt/mcomaster':
    require => Package['git'],
    ensure   => present,
    provider => git,
    source   => 'https://github.com/ajf8/mcomaster.git',
  }

  class {"mcoui::config":
     require => Vcsrepo['/opt/mcomaster'], 
  }
  
  class {"mcoui::configclient": 
    require => Class["mcoui::config"],
  }    

  class {"mcoui::configserver":
    require => Vcsrepo['/opt/mcomaster'],
  }

  class {"mcoui::install": 
    require => [Class['mcoui::configserver'], Class['mcoui::configclient']]
  }

  class {"mcoui::database":
    require => Class["mcoui::install"],
    username => $admin_username,
    password => $admin_password,
    email => $admin_email,
  }

  class {"mcoui::startserver":
    require => Class["mcoui::database"],
  }

}
