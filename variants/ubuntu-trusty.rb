$config["apt-mirror"] = "http://mirrors.cat.pdx.edu/ubuntu/"
$config["bootcmd"].push "wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb -O /tmp/plabs.deb"
$config["bootcmd"].push "dpkg -i /tmp/plabs.deb"
$config["bootcmd"].push "apt-get update"
$config["bootcmd"].push "apt-get -y install puppet nfs-common"
$config["bootcmd"].push "/tmp/copycfg"
$config["bootcmd"].push "cp /tmp/puppet.conf /etc/puppet/puppet.conf"
