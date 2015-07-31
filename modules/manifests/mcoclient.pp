include ruby::gems
include mcollective::node::packages
include mcollective::node::service
class {"mcollective":
  broker_host => 'devops2',
  use_client => true,
  default_discovery_method => 'redisdiscovery',
  use_node => false,
  broker_port => '6164',
  security_provider => 'ssl',
  broker_vhost => '/',
  broker_user => 'mcollective',
  broker_password => 'marionette',
  security_secret => 'unset',
  connector => 'rabbitmq',
  direct_addressing => 'yes',
  security_ssl_server_public => '/var/lib/puppet/ssl/certs/mcollective-servers.pem',
  security_ssl_client_private => '/var/lib/puppet/ssl/private_keys/mcoclient.pem',
  security_ssl_client_public => '/var/lib/puppet/ssl/certs/mcoclient.pem'
}
