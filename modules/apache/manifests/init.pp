class apache {

node "play-web.cloudctl.io" {

	package {'httpd':
        	ensure => installed,
        }

	service {'httpd':
		ensure => running,
		enable => true,
	}

}


}
