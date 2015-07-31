class glusterfs::add_bricks(
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

     exec{ 'add_brick':
        require => Class['glusterfs'],
        command => "gluster volume add-brick $vol_name replica $replica_count ${brick} force"
      }
 }
