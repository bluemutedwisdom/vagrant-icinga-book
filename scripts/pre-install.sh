rpm -aq |grep puppetlabs-release 1>/dev/null || yum install -y https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm && rpm --import https://yum.puppetlabs.com/RPM-GPG-KEY-puppet
rpm -q puppet-agent || yum install -y puppet-agent
