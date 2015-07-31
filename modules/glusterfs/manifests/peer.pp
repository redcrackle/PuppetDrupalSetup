class glusterfs::peer(
$peers = []
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

  define myResource {
    exec { "gluster peer probe $name":
      require => Class['glusterfs'],
      unless  => "/bin/egrep '^hostname.+=${name}$' /var/lib/glusterd/peers/*"
    }
     exec { "gluster_peer_status ":
    command => "gluster peer status",
    require => Exec["gluster peer probe $name"]
  }
  }
  myResource { $peers: }
  
 
}
