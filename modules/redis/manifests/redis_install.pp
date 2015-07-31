class redis::redis_install(
      $instancename    = 'instance1',
      $redis_memory    = '1g',
      $redis_ip        = '0.0.0.0',
      $redis_port      = 6379,
      $redis_mempolicy = 'allkeys-lru',
      $redis_timeout   = 0,
      $redis_nr_dbs    = 16,
      $redis_loglevel  = 'notice',
      $running         = true,
      $enabled         = true
)
{
class { 'redis::install': }
redis::server {
    "$instancename":
      redis_memory    => $redis_memory,
      redis_ip        => $redis_ip,
      redis_port      => $redis_port,
      redis_mempolicy => $redis_mempolicy,
      redis_timeout   => $redis_timeout,
      redis_nr_dbs    => $redis_nr_dbs,
      redis_loglevel  => $redis_loglevel,
      running         => $running,
      enabled         => $enabled
}
}
