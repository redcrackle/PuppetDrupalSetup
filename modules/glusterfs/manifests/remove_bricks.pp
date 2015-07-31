class glusterfs::remove_bricks(
  $vol_name = "",
  $brick = "",
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

     exec{ 'remove_brick_commit':
        require => Class['glusterfs'],
        command => "echo y | gluster volume remove-brick $vol_name replica $replica_count ${brick} force"
   }

 }

