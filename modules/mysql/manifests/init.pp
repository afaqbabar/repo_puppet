class mysql {

node "play-web.cloudctl.io" {

	file {'mysql-community-release-el7-5.noarch.rpm':
		path => '/home/centos/mysql-community-release-el7-5.noarch.rpm',
		owner => root,
		group => root,
		ensure => file,
		mode => 777,
		source => '/home/centos/mysqlrpm/mysql-community-release-el7-5.noarch.rpm',		
	}

	package {'mysql-community-release-el7-5.noarch':
		provider => 'rpm',
		install_options => ['-Uvh'],
                ensure => installed,
		source => '/home/centos/mysqlrpm/mysql-community-release-el7-5.noarch.rpm',
		require => File['/home/centos/mysql-community-release-el7-5.noarch.rpm'],		
	}



}
}
