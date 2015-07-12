#update url's for packages as they are released

cd ~
mkdir vagrant_env
cd vagrant_env


rpm --import http://apt.sw.be/RPM-GPG-KEY.dag.txt
wget http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm

rpm -K rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm 

rpm -i rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm

#test rpm forge by installing htop
yum install htop
echo "---------------------------"
echo "rpmforge has been installed"
sleep 5
wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.3_x86_64.rpm
rpm -i vagrant_1.7.3_x86_64.rpm

vagrant -v
echo "vagrant has been installed"
sleep 5
cd /etc/yum.repos.d
wget http://download.virtualbox.org/virtualbox/rpm/rhel/virtualbox.repo

cd ~ 
cd vagrant_env

yum --enablerepo rpmforge install dkms

yum -y install VirtualBox-4.3
echo "-------------------"
echo "virtualbox installed"
usermod -a -G vboxusers hal

echo "the following packages have been installed..."
rpm -qa |egrep -i "rpmforge|vagrant|virtual"

