class mcoui::startserver{

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

  exec { "start_server":
    cwd => "/opt/mcomaster",
    command   => "thin start --ssl -e production -d",
    logoutput => true,
  }

}
