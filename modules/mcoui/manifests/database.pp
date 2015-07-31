class mcoui::database(
$username = 'opstree',
$password = 'opstree@123',
$email = 'redcrackle@opstree.com'
) {

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

  file { 'database_config':
    path => "/opt/mcomaster/config/database.yml",
    source => "/opt/mcomaster/config/database.example.yml",
    owner => 'root',
    group => 'root',
    mode => '600',
  }
 
  exec { "database_setup":
    require => File['database_config'],
    cwd => "/opt/mcomaster",
    command   => "bash -c 'RAILS_ENV=production rake db:reset'",
    logoutput => true,
  }

  exec { "create_admin_user":
    require => Exec['database_setup'],
    cwd => "/opt/mcomaster",
    command   => "bash -c \"RAILS_ENV=production script/add_user.sh -u ${username} -p ${password} -m \"${email}\"\"",
    logoutput => true,
  }
 
  exec { "compile_assets":
    require => Exec['create_admin_user'],
    cwd => "/opt/mcomaster",
    command   => "rake assets:precompile",
    logoutput => true,
  }

}
