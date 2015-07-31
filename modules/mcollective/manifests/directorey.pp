class mcollective::directorey{
   file{"/etc/mcollective":
           ensure => ['directory','present'],
           mode => 0755
       }

   file{"/usr/share/mcollective":
           ensure => ['directory','present'],
           mode => 0755
       }
   
   file{"/usr/share/mcollective/plugins":
           ensure => ['directory','present'],
           mode => 0755
       }
   
   file{"/usr/share/mcollective/plugins/mcollective":
           ensure => ['directory','present'],
           mode => 0755
       }
    
   file{"/usr/share/mcollective/plugins/mcollective/connector":
           ensure => ['directory','present'],
           mode => 0755
       }

}

