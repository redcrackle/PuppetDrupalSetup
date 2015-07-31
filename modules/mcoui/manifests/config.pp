class mcoui::config{

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

  file{"/usr/share/mcollective/plugins/mcollective/discovery":
    ensure => ['directory','present'],
    mode => 0755
  }

  file {"/usr/share/mcollective/plugins/mcollective/validator/":
    ensure => directory,
    recurse => remote,
    require => File['/usr/share/mcollective/plugins/mcollective/discovery'],
    source => "puppet:///modules/mcoui/validator",
  }

  file { 'discoveryrb':
    path => "/usr/share/mcollective/plugins/mcollective/discovery/redisdiscovery.rb",
    require => File['/usr/share/mcollective/plugins/mcollective/validator/'],
    source => "/opt/mcomaster/mcollective/discovery/redisdiscovery.rb",
    owner => 'root',
    group => 'root',
    mode => '600',
  }

  file { 'discoveryddl':
    path => "/usr/share/mcollective/plugins/mcollective/discovery/redisdiscovery.ddl",
    require => File['discoveryrb'],
    source => "/opt/mcomaster/mcollective/discovery/redisdiscovery.ddl",
    owner => 'root',
    group => 'root',
    mode => '600',
  }

#  exec { "gem_install":
#    require => File['discoveryddl'],
#    command   => "gem install redis",
#    logoutput => true,
#  }

}
