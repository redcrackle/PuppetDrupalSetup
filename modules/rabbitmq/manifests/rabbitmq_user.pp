class rabbitmq::rabbitmq_user(
$name = 'mcollective',
$password = 'marionette'
){
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
 exec { 'Install_admin_scripit':                    
  command => "wget -P /usr/local/bin http://127.0.0.1:15672/cli/rabbitmqadmin;chmod u+x /usr/local/bin/rabbitmqadmin"  
       }

 exec { 'user':
   command => "rabbitmqadmin declare user name=$name password=$password tags=mco",
   require => Exec['Install_admin_scripit']
       }

exec { 'vhost':
   command => 'rabbitmqadmin declare permission vhost=/ user=mcollective configure=.* write=.* read=.*',
   require => Exec['user']
       }

exec { 'permissions':
   command => 'rabbitmqadmin declare exchange name=mcollective_broadcast type=topic',
   require => Exec['vhost']
       }

exec { 'executable':
   command => 'rabbitmqadmin declare exchange name=mcollective_directed type=direct',
   require => Exec['permissions']
       }

 service { 'rabbitmq-server':
    ensure  => 'running',
    enable  => true,
    require => Exec[executable],
  }
}
