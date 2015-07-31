sudo -s
vim /etc/hosts
vim /etc/hostname 
hostname 
hostname -f
sudo hostname --file /etc/hostname
hostname --file /etc/hostname
hostname -f
sudo sh -c 'echo "deb http://deb.theforeman.org/ trusty 1.5" > /etc/apt/sources.list.d/foreman.list'
sudo sh -c 'echo "deb http://deb.theforeman.org/ plugins 1.5" >> /etc/apt/sources.list.d/foreman.list'
wget -q http://deb.theforeman.org/pubkey.gpg -O- | sudo apt-key add -
sudo apt-get update
apt-get install foreman-installer
sudo -s
sudo -s
sudo foreman-installer
ls
cd /etc/puppet/environments/production/modules/
scp vkhialani@foreman-5900.phx01.dev.ebayc3.com:/etc/puppet/environments/production/modules/. .
scp -R vkhialani@foreman-5900.phx01.dev.ebayc3.com:/etc/puppet/environments/production/modules/* .
scp -r vkhialani@foreman-5900.phx01.dev.ebayc3.com:/etc/puppet/environments/production/modules/* .
ls
cd  ...
cd
vim /etc/puppet/puppet.conf 
vim /etc/sudoerso
vim /etc/sudoer
vim /etc/sudoers
ls
cd /etc/apt/
ls
vim sources.list
apt-cache search ruby-foreman
apt-get install ruby-foreman-default-hostgroup
cd ..
cd puppet/
ls
cd ..
cd foreman
ls
cd plugins/
ls
mv default_hostgroup.yaml.example default_hostgroup.yaml
ls
vim default_hostgroup.yaml 
cd
service apache2 restart
ls
cd /etc/init.d/
ls
d
cd
host
hostname
sudo -s
hostname
vim /etc/puppet/puppet.conf 
ls
cd /etc/puppet/modules/
cd ..
ls
vim aut
vim autosign.conf 
vim aut
vim auth.conf 

vim autosign.conf 
puppet cert clean drupalapp236-4424.stratus.phx.ebay.com
puppet cert clean  drupalapp236-4424.stratus.phx.ebay.com
puppet cert sign drupalapp236-4424.stratus.phx.ebay.com
puppet cert clean  drupalapp236-4424.stratus.phx.ebay.com
cd
ls
puppet cert list --all
sudo -s
scp -r 104.236.27.161:/etc/puppet/environments/production/modules/deploydrupalapp .
ls
'ls
ls
cd /etc/puppet/environments/production/modules/
rm -rf deploydrupalapp/
cp ~/deploydrupalapp/ .
cp -r ~/deploydrupalapp/ .
cd deploydrupalapp/
ls
cd manifests/
ls
vim init.pp
cd ..
cd templates/
ls
vim settings.php.erb 
vim check_mysqldb.sh.erb 
cd ..
cd manifests/
ls
vim init.pp 
hostname
visudo
vim /etc/foreman/plugins/default_hostgroup.yaml 
vim /etc/puppet/autosign.conf 
sudo -s
puppet cert list --all
cd /etc/puppet/environments/production/modules/deploydrupalapp/manifests/
cat init.pp 
cd /etc/puppet/environments/production/modules/deploydrupalapp/
cd manifests/
cat init.pp 
sudo -s
ls
scp -r root@104.236.27.161:/etc/puppet/environments/production/modules/php .
cd php
la
cd manifests/
vim init.pp
cd
cd /etc/puppet/environments/production/modules/
ls
cd deploydrupalapp/
ls
cd templates/
ls
vim settings.php.erb 
cd ..
cd manifests/
vim init.pp 
cd /etc/puppet/environments/production/modules/deploydrupalapp/manifests
ls
vim init.pp 
cd ..
cd te
cd templates/
ls
vim settings.php.erb 
cd ..
cd manifests/
ls
vim init.pp 
cd ..
ls
cd php/
cd manifests/
vim init.pp
scp -r root@104.236.27.161:/etc/puppet/environments/production/modules/php/manifests/init.pp .
vim init.pp
scp -r root@104.236.27.161:/etc/puppet/environments/production/modules/php/manifests/drush.pp .
vim drush.pp 
ls
ls
cd /etc/puppet/environments/production/modules/php/manifests/
ls
vim cd ..
cd ..
ls
cd templates/
ls
cd ..
cd deploydrupalapp/
cd templates/
ls
vim settings.php.erb 
ls
cd ..
cd deploydrupalapp/templates/
vim settings.php.erb 
sudo -s
cd /etc/puppet/environments/production/modules/
ls
vim deploydrupalapp/
cd /etc/puppet/environments/production/modules/deploydrupalapp/manifests/
cat init.pp 
sudo -s
cd /etc/puppet/environments/production/modules/php/
cd manifests/
vim init.pp
cd /etc/puppet/environments/production/modules/php/manifests
vim init.pp
ls
cd /etc/puppet/environments/production/modules/
scp root@104.236.27.161:~percona .
scp root@104.236.27.161:~/percona .
scp -r root@104.236.27.161:~/percona .
ls
cd percona/manifests/
cat init.pp 
ls
cd
puppet module install desalvo-percona
cd -
ls
vim init.pp 
cd ..
ls
scp -r ls
scp -r percona root@104.236.27.161:~
sudo -s
git clone https://github.corp.ebay.com/CIO-CustomApps/s2p.git 
puppet module install puppetlabs-vcsrepo
ls
ls
cd /etc/puppet/environments/production/
ls
cd modules/
ls
mv git gi
ls
puppet module install puppetlabs-vcsrepo
puppet module install --force puppetlabs-vcsrepo
ls
cd vcsrepo/
ls
cd ..
ls
cd vcsrepo/
ls
cd lib/
ls
cd puppet/
ls
cd provider/
ls
cd vcsrepo/
ls
vim git.rb 
ls
cd ..
ls
cd ..
ls
cd type/
ls
vim vcsrepo.rb 
cd /etc/puppet/manifests/
ls
cd ..
cd environments/production/modules/deploydrupalapp/
ls
cd manifests/
ls
vim init.pp 
cd ..
cd templates/
vim settings.php.erb 
vim ../manifests/init.pp 
vim settings.php.erb 
cd
cd -
cd ..
ls
mv gi git
ls
cd deploydrupalapp/
ls
cd manifests/
vim init.pp 
cd ..
cd nnginx/
ls
cd manifests/
ls
vim init.pp 
sudo -s
cd /etc/puppet/environments/production/modules/
ls
cd deploydrupalapp/
ls
cd manifests/
ls
vim drupalmysql.pp
vim init.pp 
vim drupalmysql.pp
cd
puppet module generate ops-drupalmysql --skip-interview
puppet module generate ops-drupalmysql 
ls
mv ops-drupalmysql/ drupalmysql
ls
cd drupalmysql/manifests/
vim init.pp 
vim /etc/puppet/environments/production/modules/deploydrupalapp/manifests/drupalmysql.pp 
vim init.pp 
cd
cp -r drupalmysql /etc/puppet/environments/production/modules/
cd /etc/puppet/environments/production/modules/drupalmysql/
cd ..
cd deploydrupalapp/manifests/
ls
rm drupalmysql.pp 
ls
cd ..
ls
cd drupalmysql/manifests/
ls
vim init.pp 
cd ..
cd drupalserver/
ls
cd manifests/
ls
vim init.pp 
cd ..
ls
rm -rf drupalmysql/
ls
cd
ls
mv drupalmysql/ mysqldrupal
cd mysqldrupal/
vim manifests/init.pp 
ls
vim Modulefile 
cd spec
ls
vim spec_helper.rb 
cd ..
ls
cd tests/
ls
vim init.pp 
cd ..
ls
cd manifests/
cd 
cp -r mysqldrupal /etc/puppet/environments/production/modules/
cd /etc/puppet/environments/production/modules/
cd mysqldrupal/
ls
cd ..
rm -rf mysqldrupal/
cd
cd mysqldrupal/manifests/
vim init.pp 
cd
puppet module generate rdc-drupalwithmysql
vim mysqldrupal/manifests/init.pp 
vim rdc-drupalwithmysql/manifests/init.pp 
mv rdc-drupalwithmysql drupalwithmysql
ls
rm -rf mysqldrupal/
cp -r drupalwithmysql /etc/puppet/environments/production/modules/
cd /etc/puppet/environments/production/modules/
cd drupalwithmysql/manifests/
vim init.pp 
cd
cd /etc/puppet/modules/
ls
cd ..
ls
vim autosign.conf 
CD
cd
cd /etc/puppet/environments/production/modules/drupalwithmysql/manifests
ls
vim init.pp 
cd ..
cd deploydrupalapp/
cd manifests/
ls
vim init.pp 
cd ..
cd drupalwithmysql/manifests/
ls
vim ~/drupalwithmysql/manifests/init.pp 
vim init.pp 
cd ..
cd deploydrupalapp/
ls
cd manifests/
ls
vim init.pp 
cd ..
cd drupalserver/manifests/
vim init.pp 
cd ../..
cd nnginx/manifests/
vim init.pp 
cd ..
cd drupalwithmysql/
cd manifests/
vim init.pp 
sudo -s
cd /etc/puppet/environments/production/modules/drupalwithmysql/manifests/
ls
vim init.pp
ls
cd /etc/puppet/environments/production/modules/mysql/manifests/
ls
vim db.pp 
vim server.pp 
cd ..
lls
cd drupalwithmysql/
cd manifests/
cd ..
cd deploydrupalapp/
ls
cd manifests/
ls
vim init.pp 
cd ..
cd mysql/sq
cd mysql/s
cd mysql/
cd manifests/
ls
vim client
vim client.pp 
vim server.pp 
cd ../..
cd mysql/
cd test
ls
cd examples/
ls
vim mysql_database.pp 
vim mysql_db.pp 
cd ..
ls
cd manifests/
ls
vim server.pp 
vim db.pp 
cd ..
ls
cd deploydrupalapp/
ls
cd manifests/
vim init.pp 
cd ..
vim init.pp 
cd manifests/
vim init.pp 
cd ..
ls
cd ..
cd mysql/manifests/
ls
cd ..
ls
cd examples/
ls
'








sudo -s
sudo -s
ls
cd /etc/puppet/environments/production/modules/drupalwithmysql/
ls
cd manifests/
ls
vim init.pp 
cd ..
cd deploydrupalapp/
cd manifests/
ls
vim init.pp 
cd ..
cd mysql/
ls
cd manifests/
ls
vim db.pp 
cd ..
cd drupalwithmysql/manifests/
vim init.pp 
cd ..
cd deploydrupalapp/
cd manifests/
ls
vim init.pp 
ls
cd /etc/puppet/
ls
cd environments/
ls
cd common/
ls
cd ..
cd production/modules/deploydrupalapp/manifests/
vim init.pp 
sudo -s
cd /etc/puppet/environments/production/modules/deploydrupalapp/manifests/
ls
vim init.pp 
cd ..
cd templates/
vim check_db_exist.sh.erb
cd /etc/puppet/environments/production/modules/deploydrupalapp/manifests/
vim init.pp 
sudo -s
ls
mkdir redmodules
cp -r /etc/puppet/environments/production/modules/ redmodules/
cd redmodules/
ls
cd modules/
ls
cd ..
ls
scp -r redmodules root@104.236.27.161:~
ls
ifconfig 
pwd
nmap
apt-get install nmap
nmap localhost
apt-get purge nmap
ls
sudo -s
ls
pwd
netstat -planet
telnet localhost 22
sudo -a
sudo -s
cd /etc/apt/sources.list.d/
ls
vim foreman.list 
cd
vim /etc/foreman/plugins/default_hostgroup.yaml 
cd /etc/puppet/environments/production/modules/php/
cd manifests/
ls
vim php5-memcached.pp 
vim init.pp
cd
cd -
ls
vim init.pp
sudo -s
cd /etc/puppet/environments/production/modules/php/manifests/
vim init.pp
sudo -s
cd /etc/puppet/environments/production/modules/php/manifests/
vim init.pp
ls
cd ..
ls
cd deploydrupalapp/
ls
cd manifests/
ls
vim init.pp 
ls
cd ..
ls
cd ..
cd php/
ls
cd manifests/
ls
vim init.pp
ls
vim php5-memcached.pp 
vim init.pp
cd ../..
ls
cd deploydrupalapp/
ls
cd manifests/
ls
vim init.pp 
sudo -s
cd /etc/puppet/manifests/
ls
vim site.pp 
cd /etc/puppet/environments/production/modules/drupald
sudo -s
ls
cd /etc/puppet/manifests/
ls
vim site.pp 
cd ..
cd environments/production/modules/
ls
puppet module generate ops-gluster --skip-interview
puppet module generate ops-gluster 
ls
mv ops-gluster/ gluster
ls
cd gluster/manifests/
ls
vim create_vol.pp
vim init.pp 
ls
vim peer.pp
ls
vim init.pp 
vim peer.pp 
ls
vim create_vol.pp 
vim init.pp 
vim create_vol.pp 
cd ..
cd deploydrupalapp/manifests/
ls
vim init.pp 
cd ../..
ls
cd gluster/
ls
cd manifests/
ls
vim create_vol.pp 
sudo -s
sudo -s
cd /etc/puppet/environments/production/modules/gluster/manifests/
ls
vim init.pp 
ls
vim create_vol.pp 
ls
cd /etc/puppet/environments/production/modules/gluster/
cd manifests/
ls
vim client.pp
cd /etc/puppet/environments/production/modules/gluster/manifests/
ls
cat client.pp 
cat create_vol.pp 
vim create_vol.pp 
gluster volume start test
vim create_vol.pp 
gluster volume start test
vim create_vol.pp 
vim peer.pp 
cd /etc/puppet/environments/production/modules/percona/manifests/
ls
vim init.pp 
cd ..
cd modules/deploydrupalapp/manifests/
ls
vim init.pp 
cat init.pp 
sudo -s
cd /etc/puppet/environments/production/modules/gluster/
ls
cd manifests/
ls
vim client.pp 
ls
vim init.pp 
ls
vim peer.pp 
ls
vim create_vol.pp 
ls
vim init.pp 
ls
cd  ..
cd ..
ls
cd percona/
ls
cd manifests/
ls
vim init.pp 
cd ..
ls
cd ..
ls
cd ..
ls
cd /etc/puppet/modules/
cd ..
ls
cd environments/production/modules/
ls
mv gluster/ glusterfs
cd glusterfs/
cd manifests/
ls
vim init.pp 
ls
vim client.pp 
vim create_vol.pp 
ls
cat init.pp 
q!
vim create_vol.pp 
ls
vim peer.pp 
ls
vim client.pp 
vim create_vol.pp 
vim init.pp 
vim peer.pp 
vim init.pp 
ls
vim client.pp 
vim init.pp 
ls
vim init.pp 
cd ..
ls
vim manifests/
cd manifests/
ls
vim create_vol.pp 
ls
vim peer.pp 
ls
vim peer.pp 
ls
vim init.pp 
ls
vim create_vol.pp 
ls
vim peer.pp 
ls
vim peer.pp 
ls
vim create_vol.pp 
ls
vim peer.pp 
ls
vim create_vol.pp 
vim add_bricks.pp
vim remove_bricks.pp
ls
vim client.pp 
vim add_bricks.pp 
sudo -s
cd /etc/puppet/environments/production/modules/gluster/manifests/
ls
vim create_vol.pp 
cat client.pp 
ls
sudo -s
ls
cd /etc/puppet/environments/production/modules/glusterfs/manifests/
ls
vim create_vol.pp 
vim remove_bricks.pp 
vim create_vol.pp 
vim remove_bricks.pp 
vim create_vol.pp 
vim remove_bricks.pp 
vim  init.pp 
vim remove_bricks.pp 
vim create_vol.pp 
vim remove_bricks.pp 
ls
vim remove_bricks.pp 

vim add_bricks.pp 
vim remove_bricks.pp 
ls
vim create_vol.pp 
vim remove_bricks.pp 
ls
vim remove_bricks.pp 
ls
vim add_bricks.pp 
vim remove_bricks.pp 
ls
vim remove_bricks.pp 
ls
cd /etc/puppet/environments/production/modules/
ls
cd percona/
ls
cd manifests/
ls
vim init.pp 
cat init.pp 
cd
cd -
ls
vim init.pp 
ls
cd /etc/puppet/environments/production/modules/glusterfs/manifests/
ls
vim add_bricks.pp 
vim remove_bricks.pp 
ls
vim add_bricks.pp 
ls
vim add_bricks.pp 
ls
cd ..
ls
cd percona/
ls
cd manifests/
ls
vim init.pp 
cd ../..
ls
cd ..
ls
cd modules/
ls
cd glusterfs/
ls
cd manifests/
ls
vim add_bricks.pp 
ls
vim init.pp 
:ls
vim peer.pp 
ls
vim add_bricks.pp 
vim remove_bricks.pp 
ls
