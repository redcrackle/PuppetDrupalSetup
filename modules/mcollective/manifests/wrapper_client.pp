class mcollective::wrapper_client(
  $broker_host = $::servername,
  $broker_port = '61614',
  $security_provider = 'ssl',
  $use_node = $mcollective::params::use_node,
  $use_client = $mcollective::params::use_client,
  $broker_vhost = $mcollective::params::broker_vhost,
  $broker_user = $mcollective::params::broker_user,
  $broker_password = $mcollective::params::broker_password,
  $security_secret = $mcollective::params::security_secret,
  $security_ssl_server_public = $mcollective::params::security_ssl_server_public,
  $security_ssl_client_private = $mcollective::params::security_ssl_client_private,
  $security_ssl_client_public = $mcollective::params::security_ssl_client_public,
  $connector = $mcollective::params::connector,
  $direct_addressing = $mcollective::params::direct_addressing,
  $default_discovery_method = $mcollective::params::default_discovery_method,
)
{
#include ruby::gems
#include mcollective::node::packages
include mcollective::node::service
class {"mcollective":
  broker_host => $broker_host,
  use_client => $use_client,
  default_discovery_method => $default_discovery_method,
  use_node => $use_node,
  broker_port => $broker_port,
  security_provider => $security_provider,
  broker_vhost => $broker_vhost,
  broker_user => $broker_user,
  broker_password => $broker_password,
  security_secret => $security_secret,
  connector => $connector,
  direct_addressing => $direct_addressing,
  security_ssl_server_public => $security_ssl_server_public,
  security_ssl_client_private => $security_ssl_client_private,
  security_ssl_client_public => $security_ssl_client_public
}

}
