class mcollective::ssl_keys{

file { 'mcoclient':
          path => "/etc/mcollective/clients/mcoclient.pem",
          require => File['/etc/mcollective/clients'],
          source => "puppet:///modules/mcollective/mcoclient.pem",
          owner => 'root',
          group => 'root',
          mode => '600',
        }

file { 'server_public_key':
          path => "/etc/mcollective/clients/server_public.pem",
          require => File['mcoclient'],
          source => "puppet:///modules/mcollective/server_public.pem",
          owner => 'root',
          group => 'root',
          mode => '600',
        }

file { 'server_private':
          require => File['server_public_key'],
          path => "/etc/mcollective/server_private.pem",
	  source => "puppet:///modules/mcollective/server_private.pem",
          owner => 'root',
          group => 'root',
          mode => '600',
        }

file { 'server_public':
          require => File['server_private'],
          path => "/etc/mcollective/server_public.pem",
          source => "puppet:///modules/mcollective/server_public.pem",
          owner => 'root',
          group => 'root',
          mode => '600',
        }

file{"/usr/share/mcollective/plugins/mcollective/registration":
          require => File['server_public'],
          ensure => ['directory','present'],
          mode => 0755
        }

file { 'registration':
          path => "/usr/share/mcollective/plugins/mcollective/registration/meta.rb",
          require => File['/usr/share/mcollective/plugins/mcollective/registration'],
          content => template('mcollective/meta.rb.erb'),
          owner => 'root',
          group => 'root',
          mode => '600',
       }

file { 'connector_ddl':
          require => File['registration'],
          path => "/usr/share/mcollective/plugins/mcollective/connector/rabbitmq.ddl",
          content => template('mcollective/rabbitmq.ddl.erb'),
          owner => 'root',
          group => 'root',
          mode => '600',
       }

file { 'connector_rb':
          path => "/usr/share/mcollective/plugins/mcollective/connector/rabbitmq.rb",
          require => File['connector_ddl'],
          content => template('mcollective/rabbitmq.rb.erb'),
          owner => 'root',
          group => 'root',
          mode => '600',
       }

service { mcollective:
         require => File['connector_rb'],
         ensure => running,
         hasstatus => false,
         enable => true,
     }

}
