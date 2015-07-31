class glusterfs::create_vol(
  $vol_name = "",
  $bricks = [],
  $replica_count = ""
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
  $brick_spec = inline_template("<%= @bricks.join(' ') %>")
  exec { "gluster_create_volume":
    command => "gluster volume create $vol_name replica $replica_count ${brick_spec} force",
    creates => "/var/lib/glusterd/vols/$vol_name",
    require => Class['glusterfs'],
  }

  exec { "gluster volume start $vol_name":
    unless  => "gluster volume status $vol_name",
    require => Exec["gluster_create_volume"],
  }   
  
  exec { "gluster_volume_status ":
    command => "gluster volume status",
    require => Exec["gluster volume start $vol_name"],
  }    
         
}
