class mcoui::configserver{

  file{"/usr/share/mcollective/plugins/mcollective/agent":
    ensure => ['directory','present'],
    mode => 0755
  }

  file { 'registartionrb':
    require => File['/usr/share/mcollective/plugins/mcollective/agent'],
    path => "/usr/share/mcollective/plugins/mcollective/agent/registration.rb",
    source => "/opt/mcomaster/mcollective/agent/registration.rb",
    owner => 'root',
    group => 'root',
    mode => '644',
  }

  file_line { "redis_host":
     require => File['registartionrb'],
     ensure => present,
     line   => 'plugin.redis.host = localhost',
     path   => '/etc/mcollective/server.cfg',
  }

  file_line { "redis_port":
     require => File_line["redis_host"],
     ensure => present,
     line   => 'plugin.redis.port = 6379',
     path   => '/etc/mcollective/server.cfg',
  }

  file_line { "redis_db":
     require => File_line["redis_port"],
     ensure => present,
     line   => 'plugin.redis.db = 0',
     path   => '/etc/mcollective/server.cfg',
     notify => Service['mcollective']
  }

  service { 'mcollective':
    require => File_line["redis_db"],
    ensure    => running,
    enable    => true,
  }

}
