class apache::params {
	case $::osfamily {
		Debian: {
            $owner = "www-data"
			$package_name = apache2
			$service_name = apache2
            $www_path = "/var/www"
		}
		
		RedHat: {
            $owner = "apache"
			$package_name = httpd
			$service_name = httpd
            $www_path = "/var/www/html"
		}
	
		default: {
			fail("The ${module_name} module is not supported on ${::operatingsystem}")
		}
	}
}
