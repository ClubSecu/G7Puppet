class apache::params {
	case $::osfamily {
		Debian: {
			$package_name = apache2
			$service_name = apache2
		}
		
		RedHat: {
			$package_name = httpd
			$service_name = httpd
		}
	
		default: {
			fail("The ${module_name} module is not supported on ${::operatingsystem}")
		}
	}
}
