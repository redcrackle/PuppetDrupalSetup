class {'drupalwithmysql':
 github_url => "github.com/nu113r/DrupalSampleApp.git",
 git_branch_name => 'master',
 db_host_ip => 'localhost',
 db_username => 'root',
 db_password => 'password',
 db_name => 'ab2',
 drupal_ip_addresses => ['localhost'],
 drupal_deploy_path => '/usr/share/nginx/www',
 git_username => "nu113r",
 git_password => "mohit123",
 memcache_module_path => "sites/all/modules/contrib",
 root_pw => "password",
 custom_code => "",
 base_url => "",
 cookie_domain => ""
}
