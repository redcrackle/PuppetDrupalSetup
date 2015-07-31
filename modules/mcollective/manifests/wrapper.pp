class mcollective::wrapper (
  $broker_host = $::servername,
  $broker_port = '61614',
  $security_provider = 'ssl',
  $broker_vhost = $mcollective::params::broker_vhost,
  $broker_user = $mcollective::params::broker_user,
  $broker_password = $mcollective::params::broker_password,
  $security_secret = $mcollective::params::security_secret,
  $security_ssl_server_private = $mcollective::params::security_ssl_server_private,
  $security_ssl_server_public = $mcollective::params::security_ssl_server_public,
  $connector = $mcollective::params::connector,
  $cert_dir = $mcollective::params::cert_dir,
  $direct_addressing = $mcollective::params::direct_addressing,
  $registration = $mcollective::params::registration,
  $registerinterval = $mcollective::params::registerinterval
){

class {"mcollective":
  broker_host => $broker_host,
  broker_port => $broker_port,
  security_provider => $security_provider,
  broker_vhost => $broker_vhost,
  broker_user => $broker_user,
  broker_password => $broker_password,
  security_secret => $security_secret,
  security_ssl_server_private => $security_ssl_server_private,
  security_ssl_server_public => $security_ssl_server_public,
  connector => $connector,
  cert_dir => $cert_dir,
  direct_addressing => $direct_addressing,
  registration => $registration,
  registerinterval => $registerinterval,
}

class { 'mcollective::ssl_keys': 
  require => Class["mcollective"]
}
}
