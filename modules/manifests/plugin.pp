include mcollective::node::service
include ruby::gems
include mcollective::node::packages
mcollective::plugin { 'service':
  ensure => present,
  type => 'client',
  old_names => false,
}
