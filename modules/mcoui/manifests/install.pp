class mcoui::install{

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
  
  package {'libsqlite3-dev':
    ensure => 'installed',
  }

  package {'libssl-dev':
    require => Package['libsqlite3-dev'],
    ensure => 'installed',
  }

  exec {'bundle_install':
    require => Package['libssl-dev'],
    command => "gem install bundler",
    logoutput => true,
  }  

  exec {"mco_install":
    require => Exec['bundle_install'],
    cwd => "/opt/mcomaster",
    command   => "bundle install",
    logoutput => true,
  }
  
  file {'application_config':
    require => Exec["mco_install"],
    path => "/opt/mcomaster/config/application.yml",
    source => "/opt/mcomaster/config/application.example.yml",
    owner => 'root',
    group => 'root',
    mode => '600',
  }

}
