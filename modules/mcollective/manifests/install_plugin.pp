class mcollective::install_plugin(
$package_name = 'package',
$type = 'agent',
$old_names = false
){
include ::mcollective::node::service
include ruby::gems
include mcollective::node::packages
mcollective::plugin { "$package_name":
  ensure => 'present',
  type => $type,
  old_names => $old_names,
}
}
