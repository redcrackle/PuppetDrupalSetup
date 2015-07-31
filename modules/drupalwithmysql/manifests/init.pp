# == Class: drupalwithmysql
#
# Full description of class drupalwithmysql here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { drupalwithmysql:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2015 Your name here, unless otherwise noted.
#
class drupalwithmysql(
$github_url = "github.corp.ebay.com/CIO-CustomApps/s2p.git",
$git_branch_name = 'master',
$db_host_ip = 'localhost',
$db_username = 'root',
$db_password = 'password',
$db_name = 'drupaldb',
$drupal_ip_addresses = [],
$drupal_deploy_path = '/usr/share/nginx/www',
$git_username = "e0edf112c16cc8860f20e9e13cc9223271b9e86d",
$git_password = "x-oauth-basic",
$memcache_module_path = "sites/all/modules/contrib",
$root_pw = "password",
$custom_code = "",
$base_url = "",
$cookie_domain = ""
){
class { 'mysql::server':
  root_password => "${root_pw}",
  before => Class['deploydrupalapp']
}

class {'deploydrupalapp':
 github_url => "${github_url}",
  git_branch_name => "${git_branch_name}",
  db_host_ip => "${db_host_ip}",
  db_username => "${db_username}",
  db_password => "${db_password}",
  db_name => "${db_name}",
  drupal_ip_addresses => $drupal_ip_addresses,
  drupal_deploy_path => "${drupal_deploy_path}",
  git_username => "${git_username}",
  git_password => "${git_password}",
  memcache_module_path => "${memcache_module_path}",
  custom_code => "${custom_code}",
  base_url => "${base_url}",
  cookie_domain => "${cookie_domain}"
}
}
