class glusterfs::client(
$mount_dir_path = '/data',
$data_volume = 'test',
$server_ip = ''
){
    Exec {
                path => [
                        '/usr/local/bin',
                        '/opt/local/bin',
                        '/usr/bin',
                        '/usr/sbin',
                        '/bin',
                        '/sbin'],
                        logoutput => true
        }

      package { "glusterfs-client":
        ensure => "installed"
      }

      exec{ 'create_mount_folder':
        require => Package['glusterfs-client'],
        command => "mkdir -p ${mount_dir_path}"
      }

#      exec{ 'mount_now':
#        require => Exec['create_mount_folder'],
 #       command => "mount -t glusterfs ${server_ip}:${data_volume} ${mount_dir_path}"
  #    }

      exec{ 'fstab_entry':
        require => Exec['create_mount_folder'],
        command => "echo '${server_ip}:${data_volume} ${mount_dir_path} glusterfs defaults,_netdev 0 0' >> /etc/fstab",
        unless => "grep  '${server_ip}:${data_volume} ${mount_dir_path} glusterfs defaults,_netdev 0 0' /etc/fstab"
      }
      exec{ 'mount_now':
        require => Exec['fstab_entry'],
        command => "mount -a"
      }
}
