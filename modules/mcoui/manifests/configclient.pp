class mcoui::configclient{

  file_line { "redis_host_client":
     require => File['registartionrb'],
     ensure => present,
     line   => 'plugin.redis.host = localhost',
     path   => '/etc/mcollective/client.cfg',
  }

  file_line { "redis_port_client":
     require => File_line["redis_host_client"],
     ensure => present,
     line   => 'plugin.redis.port = 6379',
     path   => '/etc/mcollective/client.cfg',
  }

  file_line { "redis_db_client":
     require => File_line["redis_port_client"],
     ensure => present,
     line   => 'plugin.redis.db = 0',
     path   => '/etc/mcollective/client.cfg',
  }

  file_line { "direct_addressing_client":
     require => File_line["redis_db_client"],
     ensure => present,
     line   => 'direct_addressing = yes',
     path   => '/etc/mcollective/client.cfg',
  }

}
