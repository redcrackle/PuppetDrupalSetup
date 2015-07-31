class rabbitmq::ssl_keys{
file { 'Ca':
          path => "/etc/rabbitmq/ca.pem",
          source => "puppet:///modules/rabbitmq/ca.pem",
          owner => 'root',
          group => 'root',
          mode => '600',
        }
     
file { 'public.pem':
          path => "/etc/rabbitmq/public.pem",
          require => File['Ca'],
          source => "puppet:///modules/rabbitmq/public.pem",
          owner => 'root',
          group => 'root',
          mode => '600',
      }
 
file { 'private.pem':
          path => "/etc/rabbitmq/private.pem",
          require => File['public.pem'],
          source => "puppet:///modules/rabbitmq/private.pem",
          owner => 'root',
          group => 'root',
          mode => '600',    
    }
}
