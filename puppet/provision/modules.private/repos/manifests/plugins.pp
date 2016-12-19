class repos::plugins {

   case $::osfamily {

      'redhat': {

         yumrepo { 'icinga-book':
            descr          => "Extra Packages for Icinga Book Project ${::operatingsystemmajrelease} - \$basearch",
            baseurl        => "http://download.prefork.de/epel/7",
            failovermethod => 'priority',
            enabled        => '1',
            gpgcheck       => '0',
            sslverify      => '0',
         }

      } # RedHat

      default: {
         fail("Your operatingsystem ${::operatingsystem} is not supported.")
      }

   } # case

}
